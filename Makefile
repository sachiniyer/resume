##
# Resume
#
# @file
# @version 0.1
build:
	- gpa1=$(awk 'NR==1 {print; exit}' .gpa)
	- gpa2=$(awk 'NR==2 {print; exit}' .gpa)
	- cp resume.tex resume-gpa.tex
	- str1="s/Bachelors of Science in Computer Science/Bachelors of Science in Computer Science, GPA: ""$gpa1""/g"
	- str2="s/High School Diploma/High School Diploma, GPA: ""$gpa2""/g"
	- sed -i -e "$str1" resume-gpa.tex
	- sed -i -e "$str2" resume-gpa.tex
	- pdflatex resume.tex
	- pdflatex resume-gpa.tex


# end
