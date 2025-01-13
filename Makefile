SOURCE_VAULT = obsidian_vault/_preprocessed/data
QUARTZ = garden_core/quartz
WEBSITE_DIR = website

upd_metatable:		## Use the YAML metadata in the notes to create or update a table in notes
	-"./scripts/dataview_fixlink.sh" "$(SOURCE_VAULT)"
	-"./scripts/metadata_table.sh" "$(SOURCE_VAULT)/03. 🌱Ваши заметки" &
	-"./scripts/metadata_table.sh" "$(SOURCE_VAULT)/04. 🪴Ваши статьи"
	-"./scripts/metadata_table.sh" "$(SOURCE_VAULT)/99. 🗃️Картотека/Клубы" 
	-"./scripts/metadata_table.sh" "$(SOURCE_VAULT)/99. 🗃️Картотека/Все проекты" 

build: clean upd_metatable quartz

digital-garden: clean upd_metatable		## Build a website using obsidian-digital-garden (Deprecated)

quartz: clean		## Build a website using Quartz
	@echo "Copy static files to Digital Garden..."
	@rm -rf $(QUARTZ)/content/*
	@cp -rv $(SOURCE_VAULT)/* $(QUARTZ)/content
	@echo "Building website..."
	@cd $(QUARTZ) && make build-docker
	@echo "Moving built site to website directory..."
	@mv $(QUARTZ)/output/* $(WEBSITE_DIR)/

nginx:		# Start webserver on 8080 port
	docker run \
		-v ${PWD}/website:/usr/share/nginx/html:ro \
		-v ${PWD}/configs/nginx.conf:/etc/nginx/nginx.conf:ro\
		-p 8080:80 nginx

clean:		## Clear the website directory, but save .vercel .gitignore vercel.json.
	rm -rf $(WEBSITE_DIR)/*

deploy:
	vercel --prod website

help:		## Display this help screen
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
