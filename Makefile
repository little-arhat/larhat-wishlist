FILENAME = Wishlist

clean:
	@rm -f $(FILENAME).{aux,dvi,log,out,pdf}
all: clean
	latex -halt-on-error $(FILENAME).tex
	dvipdf $(FILENAME).dvi
