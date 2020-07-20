.PHONY: clean
D     = $(shell pwd)
BD    = ${D}/build
CD    = ${D}/chapters
CSL   = ${D}/apa.csl
CSS   = ${D}/style.css
META  = ${D}/meta.yml
FLAGS = \
	${META} \
	--csl ${CSL} \
	--css ${CSS} \
	--from=markdown \
    --mathml \
  	--self-contained \
  	--standalone
KFLAGS = ${FLAGS} --webtex
PRE    = cd ${CD}
POST   =

all: latex markdown


latex:
	${PRE} && \
	pandoc -i $@.md ${FLAGS} --to epub3 -o ${BD}/$@.epub && \
	pandoc -i $@.md ${FLAGS} --to html -o ${BD}/$@.html && \
	pandoc -i $@.md ${FLAGS} --to pdf -o ${BD}/$@.pdf && \
	${POST}

markdown: markdown.md
	${PRE} && \
	pandoc -i $@.md ${FLAGS} --to epub3 -o ${BD}/$@.epub && \
	pandoc -i $@.md ${FLAGS} --to html -o ${BD}/$@.html && \
	pandoc -i $@.md ${FLAGS} --to pdf -o ${BD}/$@.pdf && \
	${POST}

xlatex: latex.md
	${PRE} && \
	pandoc -i $< ${KFLAGS} --to epub3 -o ${BD}/$@.epub
	-kindlegen ${BD}/$@.epub && \
	${POST}

clean:
	-rm -rf ./build/*
