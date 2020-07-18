.PHONY: clean
BD   = build
CSL  = apa.csl
CSS  = style.css
META = meta.yml
FLAGS = \
	${META} \
	--csl ${CSL} \
	--css ${CSS} \
	--from=markdown \
    --mathml \
  	--self-contained \
  	--standalone

KFLAGS = ${FLAGS} --webtex

latex: latex.md
	pandoc -i $< ${FLAGS} --to epub3 -o ${BD}/$@.epub && \
	pandoc -i $< ${FLAGS} --to html -o ${BD}/$@.html && \
	pandoc -i $< ${FLAGS} --to pdf -o ${BD}/$@.pdf

markdown: markdown.md
	pandoc -i $< ${FLAGS} --to epub3 -o ${BD}/$@.epub && \
	pandoc -i $< ${FLAGS} --to html -o ${BD}/$@.html && \
	pandoc -i $< ${FLAGS} --to pdf -o ${BD}/$@.pdf

xlatex: latex.md
	pandoc -i $< ${KFLAGS} --to epub3 -o ${BD}/$@.epub
	-kindlegen ${BD}/$@.epub

clean:
	-rm -rf ./build/*
