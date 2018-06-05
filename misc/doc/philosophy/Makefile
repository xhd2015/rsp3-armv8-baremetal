
INSTALL_DIR := D:/installed/texlive-portable-full/bin/win32
PDFLATEX ?= $(INSTALL_DIR)/xelatex
BIBTEX   ?= $(INSTALL_DIR)/bibtex

PDFLATEX_ARGS ?= -synctex=1  -file-line-error -shell-escape -8bit
BIBTEX_ARGS ?=

MAIN := beginner_s_guid_to_philosophy
MAIN_TEX := $(MAIN).tex
MAIN_PDF := $(MAIN).pdf

.PHONY:all
all:$(MAIN_PDF)

.PHONY:open_terminal
open_terminal:
	mintty

.PHONY:open_pdf
open_pdf:
	explorer $(MAIN_PDF) || echo

$(MAIN_PDF):$(MAIN_TEX)
	$(PDFLATEX) $(PDFLATEX_ARGS) $(MAIN_TEX)
	- $(BIBTEX) $(BIBTEX_ARGS) $(MAIN)
	$(PDFLATEX) $(PDFLATEX_ARGS) $(MAIN_TEX)
	$(PDFLATEX) $(PDFLATEX_ARGS) $(MAIN_TEX)

clean:
	- rm -rf *.toc *.log *.aux