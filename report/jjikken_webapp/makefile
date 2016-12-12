#------------------------------------------------------
# Makefile
#------------------------------------------------------

TARGET = document
SOURECE = $(shell ls img/*.ai)

LATEX = platex
DVIPDFM = dvipdfmx
XDVI = xdvi
.SUFFIXES: .tex .dvi .pdf

$(TARGET).dvi: $(TARGET).aux $(SOURECE)
	$(LATEX) $(TARGET)
	$(LATEX) $(TARGET)

.dvi.pdf: $(TARGET).dvi
	$(DVIPDFM) $<

$(TARGET).aux: $(TARGET).tex
	$(LATEX) $(TARGET)

.PHONY: pdf
pdf: $(TARGET).pdf
	open $(TARGET).pdf

.PHONY: run
run: $(TARGET).dvi
	$(XDVI) $(TARGET).dvi &

.PHONY: clean
clean:
	rm -f $(TARGET).dvi $(TARGET).toc $(TARGET).aux $(TARGET).blg $(TARGET).bbl $(TARGET).log *~

.PHONY: open
open:
	open $(TARGET).pdf


# TEX = platex
# DVIPDF = dvipdfmx
# #FLAGS_DVIPDF = -f ipaex.map
#
# RM = rm
# #INKSCAPE = inkscape
# #FLAGS_INK = -C -z
#
# #GNUPLOT = gnuplot
#
# TARGET = document
# CNT := 2
# PLT_SRCS := $(wildcard *.plt)
# EPS = $(PLT_SRCS:.plt=.eps)
#
# .PHONY: all
# all: $(TARGET).pdf
#
# $(TARGET).dvi: $(TARGET).tex $(EPS)
# 	$(TEX) $^
#
# $(TARGET).pdf: $(TARGET).dvi
# 	$(DVIPDF) $^
#
# #%.eps: %.svg
# #	$(INKSCAPE) $(FLAGS_INK) --file=$^ --export-eps=$@
#
# #%.svg: %.plt
# #	$(GNUPLOT) $^
