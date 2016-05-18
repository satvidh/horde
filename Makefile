default: build

clean:
	rm -rf build

build: clean
	mkdir -p build
	cat src/common.sh src/services.sh src/fliglio.sh src/cli.sh > build/horde
	chmod +x build/horde

install:
	cp build/horde /usr/local/bin/horde


.PHONY: build
