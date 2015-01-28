.PHONY: build reset

build:
	@echo Installing dependancies
	@git submodule update --init
	@npm install
	@cp node_modules/intl/Intl.js ./
	@echo Removing unsupported locales
	@cp -r node_modules/intl/locale-data ./locale-data
	@./purge-locales.rb
	@echo Building Intl.min.js
	@grunt
	@echo Cleanup
	@rm -rf locale-data

reset:
	rm -rf node_modules
	rm -rf locale-data
	rm Intl*js
	npm install
