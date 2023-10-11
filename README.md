# Resume

Hosted at https://sachiniyer.com/resume

## notes

- The [Makefile](./Makefile) will run `pdflatex` on all the resume versions in the [versions](./versions) directory and output it in the [output](./output) directory. It will also run `pdflatex` on the [resume.tex](./resume.tex) at the root of the directory (and put output at the root of the directory as well).
- GPA version generation. Add the `.gpa` file to the root directory with the following info. Makefile will still work with or without `.gpa`.
  ```tex
  \defineKeyValue{College}{9.9}
  ```
  You should be able to access it in any of the versions or components with
  ```tex
  \getKeyValue{College}{\myvalue}
  ```
- Autodeploys with [git syncing](https://github.com/sachiniyer/git-sync-webhooks/) to [https://sachiniyer.com/resume](https://sachiniyer.com/resume)
- I have a ton of links on my resume, and the github pdf viewer does not show them - head to my website [https://sachiniyer.com/resume](https://sachiniyer.com/resume)
