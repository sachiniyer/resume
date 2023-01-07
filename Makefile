##
# Resume
#
# @file
# @version 0.1
-include .gpa
build:
	@if [ -n "${NAME1}" ] && [ -n "${GPA1}" ] && [ -n "${NAME2}" ] && [ -n "${GPA2}" ] ; then \
		cp resume.tex resume-gpa.tex; \
		sed -i -e "s/${NAME1}/${NAME1}, GPA: ${GPA1}/g" resume-gpa.tex; \
		sed -i -e "s/${NAME2}/${NAME2}, GPA: ${GPA2}/g" resume-gpa.tex; \
		echo "Making RESUME-GPA"; \
		pdflatex resume-gpa.tex > /dev/null; \
	else \
		if [ -n "${NAME1}" ] || [ -n "${GPA1}" ] || [ -n "${NAME2}" ] || [ -n "${GPA2}" ] ; then \
			echo "Must give NAME1, GPA1, NAME2, GPA2" ; exit 1;\
		fi \
	fi

	@echo "Making RESUME"
	@pdflatex resume.tex > /dev/null
clean:
	@echo "Cleaning files"
	@rm resume.aux resume.log resume.out resume.pdf > /dev/null
	@rm resume-gpa.aux resume-gpa.log resume-gpa.out resume-gpa.pdf resume-gpa.tex > /dev/null



# end
