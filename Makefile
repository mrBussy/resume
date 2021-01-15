UNAME := $(shell uname)

HACKMYRESUME = hackmyresume

.PHONY: all resume clean md

all: pdf md

pdf:
	$(HACKMYRESUME) BUILD resume.json TO out/resume.pdf 

md:
	$(HACKMYRESUME) BUILD resume.json TO out/resume.md -t ./theme/jekyll

clean:
	rm -f out/resume.md out/resume.pdf
