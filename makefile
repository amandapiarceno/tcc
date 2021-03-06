
PROJECT = tcc

all:
	pdflatex $(PROJECT)
	bibtex $(PROJECT)
	pdflatex $(PROJECT)
	pdflatex $(PROJECT)

clean:
	rm $(PROJECT).aux $(PROJECT).bbl $(PROJECT).blg $(PROJECT).log $(PROJECT).toc $(PROJECT).pdf
	
git:
	git commit -am 'saving'
	git push origin master
