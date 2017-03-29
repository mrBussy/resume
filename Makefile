HACKMYRESUME=xvfb-run -a -s "-screen 0 640x480x16" hackmyresume

resume: out/resume.pdf out/resume.md

out/resume.pdf:
	$(HACKMYRESUME) BUILD rudi-middel_en.json TO out/resume.pdf -t modern

out/resume.md:
	$(HACKMYRESUME) BUILD rudi-middel_en.json TO out/resume.md -t ./theme/jekyll

.PHONY: clean
clean:
	rm out/resume.md out/resume.pdf
