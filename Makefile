UNAME := $(shell uname)

ifeq ($(UNAME), Linux)
# do something Linux-y
	HACKMYRESUME = hackmyresume
else
# do else
	HACKMYRESUME = xvfb-run -a -s "-screen 0 640x480x16" hackmyresume
endif

.PHONY: all resume clean

all: resume

resume:
	resume export --resume resume.json --theme jsonresume-theme-caffeine  --format pdf out/resume.pdf

hackmyresume: out/resume.pdf out/resume.md

out/resume.pdf:
	$(HACKMYRESUME) BUILD resume.json TO out/resume.pdf -t modern

out/resume.md:
	$(HACKMYRESUME) BUILD resume.json TO out/resume.md -t ./theme/jekyll

clean:
	rm -f out/resume.md out/resume.pdf
	rm -f resume.pdf
