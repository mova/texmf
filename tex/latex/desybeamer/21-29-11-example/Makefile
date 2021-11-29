TEX = 'lualatex'
JOBDIR = 'build'
BIB = 'biber'
#Name the file after the dir above
NAME = `basename $$PWD | sed -E 's@^[0-9]{2}-[0-9]{2}-[0-9]{2}-@@'`

# Define an alias for this beamer
beamer: build/$(NAME)_beamer.pdf
	echo "Beamer build"

build/$(NAME)_beamer.pdf: *.tex
	[ -d $(JOBDIR) ] || mkdir build
	latexmk -pdf -g   \
	-jobname=$(JOBDIR)/$(NAME)_beamer \
	-pdflatex="$(TEX) --file-line-error --halt-on-error --shell-escape --synctex=1 %O '\input{%S}'" talk.tex
	sed -i 's/\\\\/\n/g' build/$(NAME)_beamer.pdfpc
	sed -i 's/\\par/\n\n/g' build/$(NAME)_beamer.pdfpc


handout: build/$(NAME)_handout.pdf
	echo "Handout build"

build/$(NAME)_handout.pdf: *.tex
	[ -d $(JOBDIR) ] || mkdir build
	latexmk -pdf -g   \
	-jobname=$(JOBDIR)/$(NAME)_handout \
	-pdflatex="$(TEX) --file-line-error --halt-on-error --shell-escape --synctex=1 %O '\def\handout{}\input{%S}'" talk.tex

all: build/$(NAME)_beamer.pdf  build/$(NAME)_handout.pdf
