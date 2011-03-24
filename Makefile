FILENAME = Wishlist

phony: all

clean:
	@rm -f $(FILENAME).{aux,dvi,log,out,pdf}
all: clean
	latex -halt-on-error $(FILENAME).tex
	dvipdf $(FILENAME).dvi
