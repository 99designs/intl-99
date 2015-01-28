.PHONY: build reset

build:
	git submodule update --init
	npm install
	purge-locales.rb

reset:
	rm -rf node_modules
	npm install
