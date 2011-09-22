all: eclipse.html thunderbird.html

%.html: %.rst
	rst2html $^ > $@
	
