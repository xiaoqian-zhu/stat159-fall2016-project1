#Phony targets
.PHONY: all clean

#all
all: paper.md paper.html

#wrap up files, convert to html
paper.md: paper/sections/*.md
	cd paper/sections; cat *.md > paper.md
	cd paper/sections; mv paper.md ../

paper.html: paper/paper.md
	pandoc paper/paper.md -s -o paper.html
	mv paper.html paper/paper.html

#clean output files
clean:
	cd paper; rm -f paper.html paper.md 

