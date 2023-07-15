PDF_DIR := output
TEX_DIR := versions
MAIN_TEX := resume.tex

TEX_FILES := $(wildcard $(TEX_DIR)/*.tex)
PDF_FILES := $(patsubst $(TEX_DIR)/%.tex,$(PDF_DIR)/%.pdf,$(TEX_FILES))
MAIN_PDF := $(basename $(MAIN_TEX)).pdf

.PHONY: all clean

all: $(PDF_FILES) $(MAIN_PDF)

$(PDF_DIR)/%.pdf: $(TEX_DIR)/%.tex
	mkdir -p $(PDF_DIR)
	cd $(TEX_DIR) && pdflatex -output-directory=../$(PDF_DIR) $(notdir $<)
	rm -f $(PDF_DIR)/*.aux $(PDF_DIR)/*.log $(PDF_DIR)/*.out

$(MAIN_PDF): $(MAIN_TEX)
	pdflatex $(MAIN_TEX)
	rm -f *.aux *.log *.out

clean:
	rm -rf $(PDF_DIR) *.aux *.log
	rm -f $(MAIN_PDF)
