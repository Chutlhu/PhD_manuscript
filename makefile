.PHONY: main.pdf all clean clean-all run

# should always be the "all" rule, so that "make" and "make all" are identical.
all: main.pdf

main.pdf: main.tex
	latexmk -pdf --shell-escape -file-line-error -f main.tex

clean:
	latexmk -c

clean-all: clean
	rm -f main.bbl
	rm -f main-blx.bib
	rm -f main.run.xml
	rm -f main.tdo
	rm -f main.unq

run: main.tex
	make main.pdf
	make clean-all