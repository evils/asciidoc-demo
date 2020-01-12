# currently intended use of the files
.PHONY: test
test: *.adoc
	time asciidoctor *.adoc

# fake env-github by passing in the attribute
.PHONY: github
github: *.adoc
	time asciidoctor --attribute env-github=true *.adoc

# not an intended use, but is perfectly usable (minus linking between files)
.PHONY: manual
manual: *.adoc
	time asciidoctor -b manpage *.adoc

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
