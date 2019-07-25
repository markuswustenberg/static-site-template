.PHONY: build prettier start watch

build:
	./node_modules/.bin/node-sass --output-style compressed sass/app.scss docs/styles/app.css

prettier:
	prettier --write "docs/**/*.{html,js}"

start:
	static -a 0.0.0.0 docs

watch:
	./node_modules/.bin/node-sass --omit-source-map-url --watch sass/app.scss docs/styles/app.css
