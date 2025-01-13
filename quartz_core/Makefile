all: build-docker

build-local: clean
	npm i
	npx quartz create
	npx quartz build --output ./output


build-docker: clean
	find . -type f -exec touch {} +
	docker build --output ./output .

clean:
	rm -rf output
