#!/bin/bash

# Global variables
DIRECTORY="$1"

extract_block_list() {
  local file="$1"
  local block_name="$2"
  local list

  # Extract elements from specified block
  list=$(awk "/^$block_name:/ {found=1; next} /^\S/ {found=0} found && /^ *- / {gsub(/^- */, \"\"); print}" "$file" |
    sed 's/"//g' |   # Remove quotes
    sed 's/^ *- *//' | # Remove dashes
    tr '\n' ',' |   # Convert list to string
    sed 's/,/, /g' | # Add space after each comma
    sed 's/, $//')   # Remove trailing comma

  echo "$list"
}

extract_field() {
  local file="$1"
  local field="$2"
  local result

  result=$(grep "^$field:" "$file" | sed -E "s/^$field:\s*(.*)/\1/" | xargs)
  echo "$result"
}

create_table_in_file() {
  local file="$1"
  local city leaders social_link authors branch project project_type xp xp_with_bonus description deprecated date source yaml_end source_md edu_md table

  printf "Processing file: %s\n" "$file"

  # Extract metadata fields
  city=$(extract_field "$file" "city")
  leaders=$(extract_block_list "$file" "s21-leader")
  social_link=$(extract_field "$file" "social-link")
  authors=$(extract_block_list "$file" "s21-authors")
  branch=$(extract_field "$file" "branch")
  project=$(extract_field "$file" "project")
  project_type=$(extract_field "$file" "project-type")
  xp=$(extract_field "$file" "xp")
  xp_with_bonus=$(extract_field "$file" "xp-with-bonus")
  description=$(extract_field "$file" "description")
  date=$(extract_field "$file" "date")
  source=$(extract_field "$file" "source")
  deprecated=$(extract_field "$file" "deprecated")
  edu=$(extract_field "$file" "edu")

  # Sanitize and format metadata
  deprecated=${deprecated:-"false"}
  local deprecated_label
  deprecated_label=$([[ "$deprecated" == "true" ]] && echo "Да" || echo "Нет")
  [[ -n $edu ]] && edu_md="$edu"
  [[ -n $social_link ]] && source_md="[Ссылка]($social_link)"

  # Add available data to the table
  [[ -n $city ]] &&         table+="| Город       | $city         |\n"
  [[ -n $leaders ]] &&      table+="| Лидеры      | $leaders      |\n"
  [[ -n $social_link ]] &&  table+="| Группа      | $source_md      |\n"
  [[ -n $branch ]] &&       table+="| Ветка       | $branch        |\n"
  [[ -n $project ]] &&      table+="| Проект      | $project      |\n"
  [[ -n $authors ]] &&      table+="| s21-Автор   | $authors      |\n"
  [[ -n $date ]] &&        table+="| Дата        | $date          |\n"
  [[ -n $source ]] &&      table+="| Источник    | $source        |\n"
  [[ -n $description ]] &&  table+="| Описание    | $description    |\n"
  [[ -n $project_type ]] && table+="| Тип         | $project_type   |\n"
  [[ -n $xp ]] &&          table+="| xp          | $xp            |\n"
  [[ -n $xp_with_bonus ]] && table+="| xp с бонусом | $xp_with_bonus  |\n"
  [[ -n $edu_md ]] &&      table+="| На платформе | $edu_md        |\n"
  [[ "$deprecated" != "false" ]] && table+="| Устаревший   | $deprecated_label|\n"

  # Locate end of YAML metadata block
  yaml_end=$(grep -n '^---$' "$file" | sed -n '2p' | cut -d: -f1)
  if [[ -z $yaml_end ]]; then
    printf "Error: YAML block not found in %s\n" "$file" >&2
    return
  fi

  # Insert table below the YAML block
  if [[ -n $table ]]; then
    sed -i "$((yaml_end + 2))i \
| Поле            | Значение         |\n\
|------------- |---------------- |\n\
$table\n\
___" "$file"
    # printf "Table added to: %s\n" "$file"
  else
    # printf "No valid data to create a table for file: %s\n" "$file"
  fi
}

process_md_files_recursive() {
  local dir="$1"
  if [[ ! -d "$dir" ]]; then
    printf "Error: Directory %s does not exist.\n" "$dir" >&2
    return 1
  fi

  find "$dir" -type f -name "*.md" | while IFS= read -r file; do
    local parent_dir file_name
    parent_dir=$(basename "$(dirname "$file")")
    file_name=$(basename "$file" .md)

    if [[ "$file_name" != "$parent_dir" ]]; then
      create_table_in_file "$file"
    else
      printf "Skipping: %s (file name matches parent directory name)\n" "$file"
    fi
  done
}

main() {
  if [[ -z "$DIRECTORY" ]]; then
    printf "Usage: %s <directory>\n" "$0" >&2
    exit 1
  fi

  process_md_files_recursive "$DIRECTORY" || exit 1
}

main "$@"