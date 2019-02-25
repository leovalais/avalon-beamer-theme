export TEXINPUTS:=./texmf//:./macosbox//:./latex-apple-colors//:${TEXINPUTS}

all:
	pdflatex -shell-escape avalon-example
bib:
	pdflatex -shell-escape avalon-example
	bibtex avalon-example
	pdflatex -shell-escape avalon-example
	pdflatex -shell-escape avalon-example
clean:
	${RM} -rf auto/ _minted-avalon-example/
	${RM} *.aux *.bbl *.blg *.log *.nav *.out *.pyg *.snm *.toc *.vrb
