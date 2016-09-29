##02-Discussion  

---

###2.1 Bash
In the first part of this project, I need to start with creating a file structure for me to work in. This is where Bash steps in. Bash is Unix shell and command language that typically runs in a text window, where allow me to type commands that cause actions. The ‘shell’ is essential the interface which allows me to interact with the ‘kernel’ which does the actual computing. Bash can also read commands from file, while in this project, I work through the terminal, and with bash commands, I can create the file structure needed for this project.

Typing `mkdir` followed by a directory name creates a directory. As there is more than one directory, the `cd` command allows you to move between directories. `cd` alone gets you to the home directory. `cd dir` gets you into a subdirectory. `cd..` moves you up a directory. `cd` can be also used with relative and absolute paths with `cd`. 

Once all the required directories are sorted out, using `touch FILE…` to create all of the text files needed. Then, I use MacVim to edit all of the text files, including all the markdown files, the README, the Makefile and the gitignore. Just type `vim FILENAME` in the terminal window and then hit `i`, then you can start editing the text file. When you stop, hit`esc` and then type `:wq` allows you to save the content and exit vim. 

In project 1, vim is useful because it is easy to call up through bash, easy to type in and edit plain text, and works fine with different document formats. However, it is kind of annoying to work with long reports, like what I am doing now. So, I used sublime instead and then simply copied into vim when I wanted to save changes. 

Moving`mv [options] source dest`, deleting`rm [option]…FILE…`, and concatenating `cat FILES… > FILE…` files are also useful bash commands for this project, especially if you accidentally put the files under the wrong directory or need to move local images files into the specific directory. 

The final structure build opon bash commands is like:
```
stat159-fall2016-project1/
	.gitignore
	README.md
	Makefile
	paper/
		sections/
			00-abstract.md
			01-introduction.md
			02-discussion.md
			03-conclusions.md
		paper.md
		paper.html
	images/
		git-logo.png
		github-logo.png
		markdown-logo.png
		pandoc-logo.png
		stat159-logo.png
```

As the bash commands are simple to call and easy to use, I build such a structure straightforward and quick. Such structure took me less than one hour to make. 


###2.2 Markdown  
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/markdown-logo.png)

Markdown is a lightweight markup language, has a very simple syntax and works well with many basic text editors. Generally, Markdown allows people to write using an easy-to-read, easy-to-write and good looking plain text format, and then converts it to many structurally valid document formats.

Some useful syntax that I used for my project 1 shown below:  
1.Putting a `#` before a phrase will make it a header. Adding more and more `#` makes the header smaller and smaller.  
2.`*` can be used for listing bullet points.  
3.Emphasis  
		a.Italics, with `*something*` or `_something_`;  
		b.bold, with `**something**` or `__somthing__`;  
4.Links, `[link name] (xxx.com)`  
5.Images `![image name](xxx.png/jpg)`  
6.Inline code has `back-ticks around` it.  
7.Horizontal Rule, with three or more `***`, `___` or `---`.  
8....  

You have the control over the display of the text when using markdown, like creating headers, organizing lists, adding links, images and also videos; and it is quick and easy. Using online markdown editor makes it even easier that allows you to see the visualization of the effects on the right. Then I can just copy and paste the formatted text into vim to save changes. During this project, I am working with markdown all the time; it is time consuming but not that annoying as using online markdown editor can help me to reduce the mistakes.  


###2.3 Git
![]( https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/git-logo.png)  

Before you complete a project, the project is a living creature that keeps evolving; it is necessary to keep track of changes. This is where Git steps in. Git is a type of version control system that records changes to a file or set of files over time so that you can recall specific versions later. It allows you to revert files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something that might be causing a problem, who introduced an issue and when, and more. Using Git also generally means that if you screw things up or lose files, you can easily recover. 

Git is very easy to call and use, there are a few very useful commands for me to track changes locally:  
* First of all, I need to initiate Git in my root directory, by typing bash command `git init`.  
* After I edit a file or make some changes in the directory, I can use the commands `git add FILE…`, `git commit –m “message”` to add files changed into tracking and also add a message to title the commit.  
* Moreover, `git status` is very useful for checking if I miss some changes untracked or if I made an error.  
* Finally, `git log` can show me the project history. 


###2.3 GitHub
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/github-logo.png)  

Using Git locally on your own computer if you are working alone. However, what if your computer face some issues or what if you need collaboration when doing a project? In these situation, a remote repository on the we becomes very necessary, and this is where GitHub steps in. GitHub is a hosting service created specifically for Git which allows groups of contributor to work on a remote repositories. GitHub users can connect a local repository to a GitHub repository and `push` content from their own local repository to GitHub and `pull` content from GitHub to their local repository. To do this, you only need to create a GitHub repository with the same name as the root directory, in this case, `stat159-fall2016-project1`. (To be noticed, you need to set up an account on Github before you doing this.)To connect to the remote and local repository, you use the command ` git remote add origin url`, `git remote –v` and `git push –u origin master`. After the connection, you can always use `git push –u origin master` to update the remote repository according to the local one. 

I really like this part of the project that I can back up my work on a remote repository with those easy and quick bash commands. Whenever push the content from my local repository to GitHub, it is existing to double check my GitHub repository. It is a feeling of guarantee and content!

###2.4 GNU Make
After I finish type up each section in the project, I need to think about wrap things up and generate a final product. I need to use GNU Make and Pandoc to accomplish this, while I am going to talk about GNU Make first. 

GNU Make is a build automation tool which controls the generation of executable and other non-source files of a program from the program's source files Simply, Make allows us to define our own command `make` through a text file called `Makefile`, and `make` is able to do many different things based on what you put in the Makefile. In project 1, I am using Make to concatenate the sections of the reports together into `paper.md` and then convert it to `paper.html`. The second step needs Pandoc, which I will talk later. 

My Makefile is formed with rules shown below:
```
.PHONY: all clean
all: paper.md paper.html
paper.md: paper/sections/*.md
	cd paper/sections; cat *.md > paper.md
	cd paper/sections; mv paper.md ../  paper.html: paper/paper.md
	cd paper; pandoc paper.md -s -o paper.html
clean:
	rm -f paper.html paper.md 
``` 
`paper.md` and `paper.html` are my target file and `paper/sections/*.md` and `paper/paper.md` are my dependencies. A target file is a file that needs to be made and a dependency is an existing file that I want to use to build the target. To be noticed, the recipe lines must be indented with a TAB instead of space. Terminal returned errors, when I accidentally used space. With the correct code, when I run Make, I can see the generated output file paper.html. Additionally, I also have a clean target that is used for remove paper.html and paper.md from testing, before I get the final product I want. Just, type `make clean`, I can remove the all the output files from testing. GNU is great that it automates the action of wrapping, document converting and also the testing process. This saves me a lot of time and also allows me to execute those actions when necessary. 


###2.5 Pandoc
![]( https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/pandoc-logo.png)
Pandoc is a universal document converter that converts files from one markup format into another. Pandoc is a command-line tool, so there is no graphic user interface. Thus, I need to open a terminal window to use it. In Project 1, I want to convert `paper.md` to `paper.html`. As the I need to test several times to get the final product, I put the command `pandoc paper.md –s –o paper.html` in Makefile to reduce the time of unnecessary recompiling. The –s option says to create a file, with header and footer, not just a fragment. And the –o test.html says to put the output in the file. If the code works, typing `ls paper` in the terminal window, then I should see `paper.html`. 

Pandoc is great, not only it is free and can universally converting one markup format to another, but also, Pandoc understands a number of useful markdown syntax extensions that including footnotes, tables, flexible ordered lists, definition lists, fenced code blocks, superscripts and subscripts and citations. Working with Pandoc allows us to do academic writing in plain text that makes writing easy to write and edit. 

