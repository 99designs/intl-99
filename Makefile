.PHONY: build reset

build:
	@echo Installing dependancies
	@git submodule update --init
	@npm install
	@echo Removing unsupported locales
	@cp -r node_modules/intl/locale-data ./locale-data
	@./purge-locales.rb
	@echo Building Intl.complete.min.js
	@grunt
	@echo Cleanup
	@rm -rf locale-data

reset:
	rm -rf node_modules
	rm -rf locale-data
	rm Intl*js
	npm install
