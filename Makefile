UNAME := $(shell uname)

ifeq ($(UNAME), Linux)
# do something Linux-y
	HACKMYRESUME = hackmyresume
else
# do else
	HACKMYRESUME = xvfb-run -a -s "-screen 0 640x480x16" hackmyresume
endif

.PHONY: all resume clean md

all: pdf

pdf:
	resume export --resume resume.json --theme jsonresume-theme-caffeine  --format pdf out/resume.pdf

md: out/resume.md

out/resume.md:
	$(HACKMYRESUME) BUILD resume.json TO out/resume.md -t ./theme/jekyll

clean:
	rm -f out/resume.md out/resume.pdf
