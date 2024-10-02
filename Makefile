PDF_DIR := output
TEX_DIR := versions
MAIN_TEX := resume.tex
PART_DIRS := certifications education environment experience heading programming projects

TEX_FILES := $(wildcard $(TEX_DIR)/*.tex)
PDF_FILES := $(patsubst $(TEX_DIR)/%.tex,$(PDF_DIR)/%.pdf,$(TEX_FILES))
MAIN_PDF := $(basename $(MAIN_TEX)).pdf
PART_FILES := $(foreach dir,$(PART_DIRS),$(wildcard $(dir)/*.tex))

.PHONY: all clean rebuild

all: $(PDF_FILES) $(MAIN_PDF) resume.sty ${PART_FILES}

# create a target just for the main resume
main: $(MAIN_PDF)

$(PDF_DIR)/%.pdf: $(TEX_DIR)/%.tex resume.sty ${PART_FILES}
	mkdir -p $(PDF_DIR)
	cd $(TEX_DIR) && pdflatex -output-directory=../$(PDF_DIR) $(notdir $<)
	rm -f $(PDF_DIR)/*.aux $(PDF_DIR)/*.log $(PDF_DIR)/*.out

$(MAIN_PDF): $(MAIN_TEX) resume.sty ${PART_FILES}
	pdflatex $(MAIN_TEX)
	rm -f *.aux *.log *.out

clean:
	rm -rf $(PDF_DIR) *.aux *.log
	rm -f $(MAIN_PDF)

rebuild: clean all
