
.PHONY: all resume.pdf

all: resume.pdf

resume.pdf:
	resume export --resume resume.json --theme jsonresume-theme-caffeine  --format pdf resume.pdf

clean:
	rm resume.pdf
