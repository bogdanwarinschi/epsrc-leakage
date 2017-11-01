grant.pdf : $(wildcard *.tex *.bib)
	@pdflatex grant.tex
	@biber    grant
	@pdflatex grant.tex
	@biber    grant
	@pdflatex grant.tex
	@biber    grant
	@pdflatex grant.tex

split     :
	@pdfjam --outfile grant-case.pdf       grant.pdf  1-8
	@pdfjam --outfile grant-annex_just.pdf grant.pdf  9-10
	@pdfjam --outfile grant-annex_path.pdf grant.pdf 11-12
	@pdfjam --outfile grant-annex_work.pdf grant.pdf 13

all      : grant.pdf

clean    :
	@rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.pdf *.xml

spotless : clean
	@rm -f *.pdf
