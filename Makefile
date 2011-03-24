FILENAME = Wishlist

phony: all

clean: clean_temp
	@rm -f $(FILENAME).pdf

clean_temp:
	@rm -f $(FILENAME).{aux,dvi,log,out}

all: clean
	latex -halt-on-error $(FILENAME).tex
	dvipdf $(FILENAME).dvi

pdf: all
	$(MAKE) clean_temp
