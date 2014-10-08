
MUSTACHEFILES=$(shell find widgets -type f -name '*.mustache')
MUSTACHETARGETS=$(MUSTACHEFILES:%.mustache=%.js)

HANDLEBARS=./node_modules/.bin/handlebars

all: node_modules bower_components build

build: $(MUSTACHETARGETS)

%.js: %.mustache
	$(HANDLEBARS) $< -o -f $@

node_modules: package.json
	npm install
	@touch -m node_modules

bower_components: bower.json
	bower install
	@touch -m bower_components

veryclean: clean
	rm -Rf node_modules bower_components

clean:
	rm $(MUSTACHETARGETS)

.PHONY: all build

