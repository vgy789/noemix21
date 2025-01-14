#!/bin/bash

# Set locale for consistent string processing.
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# Extracts a list of items from a block defined by a header in a file, removes unnecessary dashes, quotes, and formats the output.
extract_list_from_block() {
  local file="$1"
  local block_name="$2"

  awk -v block_name="$block_name" '
    $0 ~ "^" block_name ":" {found=1; next}
    /^\S/ {found=0}
    found && !/^\s*$/ {
      gsub(/^ *- |"/,""); # Удаляем пробелы/дефисы и кавычки
      if (list) {
        list = list ", " $0;
      } else {
        list = $0;
      }
    }
    END {print list}
  ' "$file"
}

# Extracts a value associated with a field from a file. Removes unnecessary quotes and trims whitespace.
extract_field_value() {
  local file="$1"
  local field="$2"

  awk -F': ' -v field="$field" '$1 == field {gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2); gsub(/^"|"$/, "", $2); print $2; exit}' "$file"
}

# Inserts a formatted table into a Markdown file based on extracted fields.
insert_metadata_table() {
  local file="$1"

  local city leaders social_link authors branch project project_type xp xp_with_bonus deprecated date source edu
  city=$(extract_field_value "$file" "city")
  leaders=$(extract_list_from_block "$file" "s21-leader")
  social_link=$(extract_field_value "$file" "social-link")
  authors=$(extract_list_from_block "$file" "s21-authors")
  branch=$(extract_field_value "$file" "branch")
  project=$(extract_field_value "$file" "project")
  project_type=$(extract_field_value "$file" "project-type")
  xp=$(extract_field_value "$file" "xp")
  xp_with_bonus=$(extract_field_value "$file" "xp-with-bonus")
  date=$(extract_field_value "$file" "date")
  source=$(extract_field_value "$file" "source")
  deprecated=$(extract_field_value "$file" "deprecated")
  edu=$(extract_field_value "$file" "edu")

  deprecated=${deprecated:-"false"}
  local deprecated_label="$([[ "$deprecated" == "true" ]] && echo "Да" || echo "Нет")"
  local edu_md="${edu:-}"
  local source_md="${social_link:+[Ссылка]($social_link)}"

  # Ensure leaders are properly formatted without dashes and quotes
  leaders=$(echo "$leaders" | sed 's/^- //g; s/"//g; s/,/, /g')

  local table=""
  [[ -n "$city" ]] && table+="| Город           | $city           |\n"
  [[ -n "$leaders" ]] && table+="| Лидеры          | $leaders        |\n"
  [[ -n "$social_link" ]] && table+="| Группа          | $source_md      |\n"
  [[ -n "$branch" ]] && table+="| Ветка           | $branch         |\n"
  [[ -n "$project" ]] && table+="| Проект          | $project        |\n"
  [[ -n "$authors" ]] && table+="| s21-Автор       | $authors        |\n"
  [[ -n "$date" ]] && table+="| Дата            | $date           |\n"
  [[ -n "$source" ]] && table+="| Источник        | $source         |\n"
  [[ -n "$project_type" ]] && table+="| Тип             | $project_type   |\n"
  [[ -n "$xp" ]] && table+="| xp              | $xp             |\n"
  [[ -n "$xp_with_bonus" ]] && table+="| xp с бонусом    | $xp_with_bonus  |\n"
  [[ -n "$edu_md" ]] && table+="| На платформе    | $edu_md         |\n"
  [[ "$deprecated" == "true" ]] && table+="| Устаревший      | $deprecated_label |\n"

  if [[ -z "$table" ]]; then
    printf "No metadata found in %s. Skipping.\n" "$file"
    return 0
  fi

  local yaml_end
  yaml_end=$(grep -n '^---$' "$file" | sed -n '2p' | cut -d: -f1)
  if [[ -z "$yaml_end" ]]; then
    printf "Error: YAML block not found in %s\n" "$file" >&2
    return 1
  fi

  awk -v end="$yaml_end" -v table="$table" '{
    print
    if (NR == end) {
      print ""
      print "| Поле             | Значение          |"
      print "|-----------------|-----------------|"
      printf "%s\n", table
      print "___"
    }
  }' "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
}

# Processes Markdown files recursively within a directory.
process_markdown_files() {
  local directory="$1"

  if [[ ! -d "$directory" ]]; then
    printf "Error: Directory '%s' not found.\n" "$directory" >&2
    return 1
  fi

  export -f extract_list_from_block extract_field_value insert_metadata_table

  find "$directory" -type f -name "*.md" -print0 | xargs -0 -P "$(nproc)" -I{} bash -c '
    file="{}"
    parent_dir=$(basename "$(dirname "$file")")
    file_name=$(basename "$file" .md)

    if [[ "$file_name" != "$parent_dir" ]]; then
      insert_metadata_table "$file"
    else
      printf "Skipping: %s (filename matches parent directory)\n" "$file"
    fi
  '
}

main() {
  local directory="$1"

  if [[ -z "$directory" ]]; then
    printf "Usage: %s <directory>\n" "$0" >&2
    exit 1
  fi

  process_markdown_files "$directory" || exit 1
}

main "$@"
