#Phony targets
.PHONY: all clean

#all
all: paper.md paper.html

#wrap up files, convert to html
paper.md: paper/sections/*.md
	cat paper/sections/*.md > paper.md
	mv paper/sections/paper.md ../

paper.html: paper/paper.md
	pandoc paper.md -s -o paper.html

#clean output files
clean:
	rm -f paper.html paper.md 

