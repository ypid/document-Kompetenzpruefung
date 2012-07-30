include $(HOME)/Skripte/makefiles/latex/Makefile.rules

TEXORGFILE	= Kompetenzpruefung
TEXFILE		= $(TEXORGFILE)
FILE		= $(TEXORGFILE)

#TEXBTFILE	= $(TEXORGFILE)-ly
## Muss in "main" liegen mit ln -s main/doc.tex doc.tex

UPLOADFILE	= "$(TEXFILE).pdf"
## Dateien werden vor einem Upload nach /tmp Kopiert
UPLOADDIR	= Klasse/12
UPLOAD		?= $(UPLOADCOM) /httpdocs/$(UPLOADDIR) /tmp/$(UPLOADFILE)
## Geht nur bei einer Datei

include $(HOME)/Skripte/makefiles/latex/Makefile.if

main: $(TEXFILE).pdf log

all: gitstats main upload
#	make FILE="$(TEXBTFILE)"

include $(HOME)/Skripte/makefiles/latex/Makefile.targets

