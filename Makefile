FILENAME = Wishlist

phony: all

clean: clean_temp
	@rm -f $(FILENAME).{pdf,html}

clean_temp:
	@rm -f $(FILENAME).{aux,haux,dvi,log,out}

build: clean
	latex -halt-on-error $(FILENAME).tex

all: clean
	$(MAKE) build
	$(MAKE) pdf
	$(MAKE) html

pdf: build
	dvipdf $(FILENAME).dvi
	$(MAKE) clean_temp

html: build
	hevea $(FILENAME).tex
	$(MAKE) clean_temp
