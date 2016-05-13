
SOURCES = alpha2.c\
          Makefile COPYRIGHT.txt LICENSE.txt README.md

all: build/alpha2

clean:
	rm -rf build
	rm -rf dist

build/alpha2: alpha2.c
	mkdir -p build
	cc -o $@ -O4 -Wall $^

sources: dist/alpha2-sources.zip dist/alpha2-sources.tar.gz

dist/alpha2-sources.zip: $(SOURCES)
	mkdir -p dist
	zip dist/alpha2-sources $(SOURCES)

dist/alpha2-sources.tar.gz: $(SOURCES)
	mkdir -p dist
	tar czf dist/alpha2-sources.tar.gz $(SOURCES)
