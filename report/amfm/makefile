#------------------------------------------------------
# Makefile
#------------------------------------------------------

TARGET = document
SOURECE = $(shell ls image/*.eps)

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

pdf: $(TARGET).pdf

run: $(TARGET).dvi
	$(XDVI) $(TARGET).dvi &

clean:
	rm -f $(TARGET).dvi $(TARGET).toc $(TARGET).aux $(TARGET).blg $(TARGET).bbl $(TARGET).log *~


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
