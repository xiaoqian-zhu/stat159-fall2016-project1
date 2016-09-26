# from markdown to html
paper/paper.html: paper/paper.md
	pandoc paper/paper.md -s -o paper/paper.html

# phony targets
.PHONY: all clean

# all
all: paper/paper.html


# from markdown to html
paper/paper.html: paper/paper.md
	pandoc paper/paper.md -s -o paper/paper.html

# remove output files
clean:
	rm -f paper/paper.html
