MAIN_DOC=tutorial.tex

default : doc clean

doc :
	latexmk -pdf ${MAIN_DOC}

clean :
	latexmk -c

fullclean :
	latexmk -C
