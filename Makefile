DOCA=Arghya_Bhattacharya_Resume
DOCB=Arghya_Bhattacharya_Consulting_Resume
DOCC=Arghya_Bhattacharya_CV
OPTS = -pdf 
LATEX = pdflatex

default:
	@if (command -v latexmk > /dev/null) ; then latexmk $(OPTS) $(DOCA) ; else make brute; fi 

resume:
	@if (command -v latexmk > /dev/null) ; then latexmk $(OPTS) $(DOCA) ; else make brute; fi

consulting:
	@if (command -v latexmk > /dev/null) ; then latexmk $(OPTS) $(DOCB) ; else make brute; fi

cv:
	@if (command -v latexmk > /dev/null) ; then latexmk $(OPTS) $(DOCC) ; else make brute; fi

cont: 
	latexmk -pvc $(OPTS) $(DOCA)

clean:
	latexmk -C
