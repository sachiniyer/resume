##
# Resume
#
# @file
# @version 0.1
build:
	@pdflatex resume.tex > /dev/null
clean:
	@echo "Cleaning files"
	@rm resume.aux resume.log resume.out resume.pdf > /dev/null
clean-no-pdf:
	@echo "Cleaning files (except pdfs)"
	@rm resume.aux resume.log resume.out > /dev/null
# end
