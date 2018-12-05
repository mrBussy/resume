UNAME := $(shell uname)

HACKMYRESUME = hackmyresume

.PHONY: all resume clean md

all: pdf md

pdf:
	resume export --resume resume.json --theme jsonresume-theme-caffeine  --format pdf out/resume.pdf

md:
	$(HACKMYRESUME) BUILD resume.json TO out/resume.md -t ./theme/jekyll

clean:
	rm -f out/resume.md out/resume.pdf
