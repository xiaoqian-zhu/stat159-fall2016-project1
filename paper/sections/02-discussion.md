##03-Discussion
In this section

---

###Markdown  
![Markdownlogo](https://raw.githubusercontent.com/rho715/stat159-fall2016-project1/master/images/markdown-logo.png)							
Markdown is a lightweight markup language and also a text-to-HTML conversion tool for web writers. Markdown allows people to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid HTML. Thus, “Markdown” is two things: (1) a plain text formatting syntax; and (2) a software tool, written in Perl, that converts the plain text formatting to HTML.

Documentation is the key to every project, that every data project requires documentation, and reporting. Without documentation, it is impossible to do reproducibility. Markdown is a minimal markup language and is easily read and edited with a normal text editor. 
Unlike cumbersome word processing applications, text written in Markdown can be easily shared between computers, mobile phones, and people. It’s quickly becoming the writing standard for academics, scientists, writers, and many more.

You have the control over the display of the text when using markdown, like creating headers, organizing lists, adding links, images and also videos. 


###Pandoc  
Pandoc is a universal document converter that converts files from one markup format into another. By default, input is interpreted as pandoc markdown, and the output is HTML. The default comman to generate the html file would be: Pandoc doc.md. Pandoc is free but powerful. Pandoc can convert documents in markdown, HTML, textile and other documents to HTML formats, Word processor formats, PDF via LaTex and others. Pandoc is a command-line tool, so there is no graphic user interface. 

>
```{r}
pandoc test.md –f markdown –t html –s –o test.html
```


###Makefile  
Automation with GNU Make. 

```{r}
# from markdown to html
paper.html: paper.md
	pandoc paper.md -s -o paper.html
```
sometext

###Git 
vision control system

###GitHub  
 
sometext


##Further Discussion  
Pandoc, Markdown, GNU Make, Git, Github, online resources including Stat 159 course website,  manuals for each tools where……
