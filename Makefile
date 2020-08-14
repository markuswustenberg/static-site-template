.PHONY: build clean prettier start watch

build: clean
	ssssg build
	sass --style compressed sass/app.scss docs/styles/app.css
	prettier --write "docs/**/*.html"

clean:
	rm -rf docs/*

prettier:
	prettier --write "layouts/**/*.html"
	prettier --write "pages/**/*.html"

start:
	ssssg serve

watch:
	sass --watch sass/app.scss docs/styles/app.css
