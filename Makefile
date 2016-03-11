
resume: out/resume.pdf out/resume.md

out/resume.pdf:
	hackmyresume BUILD rudi-middel_en.json TO out/resume.pdf -t modern

out/resume.md:
	hackmyresume BUILD rudi-middel_en.json TO out/resume.md -t ./theme/jekyll

.PHONY: clean
clean:
	rm out/resume.md out/resume.pdf
