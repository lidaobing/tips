all: eclipse.html

%.html: %.rst
	rst2html $^ > $@
	
