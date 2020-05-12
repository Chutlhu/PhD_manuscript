.PHONY: main.pdf all clean clean-all

all: main.pdf

main.pdf: main.tex
	latexmk -pdf --shell-escape -file-line-error -f main.tex

clean:
	latexmk -c
	rm -f main.auxlock
	rm -f main.loa
	rm -f main.unq
	rm -f main.run.xml

clean-all: clean
	rm -f main.bbl

clean-purge: clean-all
	latexmk -C
