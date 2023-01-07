# resume
This is my resume

## notes
  - GPA version generation. I don't like making my GPA public so I create two version. Add the `.gpa` file to the root directory with the following info. Makefile will still work with or without `.gpa`.
    ```
    NAME1=Bachelors of Science in Computer Science
    GPA1=9.9
    NAME2=High School Diploma
    GPA2=9.9
    ```
 - CI/CD enable to autodeploy to [https://sachiniyer.com/resume](https://sachiniyer.com/resume)
 - To build run `make`. To clean run `make clean`. To leave pdf(s), `make clean-no-pdf`
