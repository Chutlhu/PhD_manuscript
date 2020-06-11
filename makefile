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
	echo purge_start
	latexmk -C
	latexmk -c
	rm -f main.mtc*
	rm -f main.maf
	rm -f main.bbl
	rm -f main.run.xml
	rm -f main.unq
	echo purge_end
