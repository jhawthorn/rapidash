
all: node_modules bower_components

node_modules: package.json
	npm install
	@touch -m node_modules

bower_components: bower.json
	bower install
	@touch -m bower_components

clean:
	rm -Rf node_modules bower_components

.PHONY: all

