SOURCE_VAULT = obsidian_vault/_preprocessed/data
QUARTZ = quartz_core
WEBSITE_DIR = website

all: meta_table quartz link_fix

meta_table:		# Create a table with metadata in .md
	./scripts/metadata_table.sh "$(SOURCE_VAULT)"

quartz: clean		## Build a website using Quartz
	@echo "Копирование..."
	rm -rf $(QUARTZ)/content/*
	cp -rv $(SOURCE_VAULT)/* $(QUARTZ)/content
	@echo "Сборка сайта..."
	@cd $(QUARTZ) && make build-docker
	@echo "Перемещение собранного сайта в директорию website..."
	@mv $(QUARTZ)/output/* $(WEBSITE_DIR)/

link_fix:		# Fix Dataview links
	@echo "Исправление ссылок..."
	./scripts/dataview_fixlink.sh "$(WEBSITE_DIR)"

nginx:		# Start webserver on 8080 port
	docker run \
		-v $(PWD)/website:/usr/share/nginx/html:ro \
		-v $(PWD)/configs/nginx.conf:/etc/nginx/nginx.conf:ro \
		-p 8080:80 nginx

clean:		# Cleaning the website directory
	rm -rf $(WEBSITE_DIR)/*

help:		## Display this help screen
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
