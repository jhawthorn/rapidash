
MUSTACHEFILES=$(shell find widgets -type f -name '*.mustache')

HANDLEBARS=./node_modules/.bin/handlebars

all: node_modules bower_components build

build: build/templates.js

build/templates.js: $(MUSTACHEFILES)
	mkdir -p build
	$(HANDLEBARS) $(MUSTACHEFILES) -o -m -f $@


node_modules: package.json
	npm install
	@touch -m node_modules

bower_components: bower.json
	bower install
	@touch -m bower_components

veryclean: clean
	rm -Rf node_modules bower_components

clean:
	rm -Rf build

.PHONY: all build

