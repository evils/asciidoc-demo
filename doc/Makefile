# currently intended use of the files
.PHONY: test
test: *.rst
	time pandoc test2.rst -s -o test2.html
#	time pandoc test.rst -s -o test.html

# not an intended use, but is perfectly usable (minus linking between files)
.PHONY: manual
manual: *.rst
	time pandoc -s -t man test.rst -o test.1

# these two are here for my convenience...
.PHONY: show
show:
	firefox test.html

.PHONY: man
man:
	man -l test.1

.PHONY: clean
clean:
	rm -rf *.html *.[0-9]
