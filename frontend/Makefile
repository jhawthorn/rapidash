
MUSTACHEFILES=$(shell find src widgets -type f -name '*.mustache')
COFFEEFILES=$(shell find src widgets -type f -name '*.coffee')
SCSSFILES=$(shell find src widgets -type f -name '*.scss')

HANDLEBARS=./node_modules/.bin/handlebars
COFFEE=./node_modules/.bin/coffee
SCSS=scss

all: node_modules bower_components build

build: build/app.js build/app.css build/templates.js

build/templates.js: $(MUSTACHEFILES)
	@mkdir -p build
	$(HANDLEBARS) $(MUSTACHEFILES) -o -m -f $@

build/app.js: $(COFFEEFILES)
	@mkdir -p build
	$(COFFEE) --no-header -c -p $(COFFEEFILES) > $@

build/app.css: $(SCSSFILES)
	@mkdir -p build
	cat $(SCSSFILES) | $(SCSS) -s > $@

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

