## Inputs

MISC_TEX := ./extra/FakeFile.tex ./chapters/02_basic/fakefile2.tex ./chapters/03_full/fakefile3.tex ./chapters/03_full/fakefile4.tex
MAIN_TEX := tutorial.tex

## Implied Files Lists

MISC_PDF := $(foreach file, $(MISC_TEX),$(dir $(file))$(subst .tex,.pdf,$(notdir $(file))))
MAIN_PDF := $(foreach file, $(MAIN_TEX),$(dir $(file))$(subst .tex,.pdf,$(notdir $(file))))

## Main Targets

default : docs

docs : $(MISC_PDF) $(MAIN_PDF)

fullclean :
	latexmk -C

test :
	echo $(MISC_PDF)
	echo $(MAIN_PDF)

## File Type Recipes

%.pdf : %.tex
	cd $(dir $<) ; latexmk -pdf $(notdir $<)
	cd $(dir $<) ; latexmk -c $(notdir $<)
