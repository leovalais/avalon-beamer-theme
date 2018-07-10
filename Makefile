all:
	pdflatex -shell-escape avalon-example
bib:
	pdflatex -shell-escape avalon-example
	bibtex avalon-example
	pdflatex -shell-escape avalon-example
	pdflatex -shell-escape avalon-example
