
MUSTACHEFILES=$(shell find widgets -type f -name '*.mustache')

COFFEEFILES=$(shell find widgets -type f -name '*.coffee')

HANDLEBARS=./node_modules/.bin/handlebars
COFFEE=./node_modules/.bin/coffee

all: node_modules bower_components build

build: build/app.js build/templates.js

build/templates.js: $(MUSTACHEFILES)
	@mkdir -p build
	$(HANDLEBARS) $(MUSTACHEFILES) -o -m -f $@

build/app.js: $(COFFEEFILES)
	@mkdir -p build
	./node_modules/.bin/coffee --no-header -c -p $(COFFEEFILES) > $@

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

