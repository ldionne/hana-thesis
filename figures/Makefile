.PHONY: clean

DIAGRAMS = $(patsubst mp/%.mp,%.png,$(wildcard mp/*.mp))

all: $(DIAGRAMS)

%.full:
	cat mp/_before mp/$*.mp mp/_after > $*.full

%.1: %.full
	mpost --tex=latex $*.full

%.png: %.1
	convert -colorspace rgb -density 600 						\
		$*.1 '(' +clone -background black -shadow 90x4+0+1 ')' 	\
		+swap -background none -layers merge +repage $*.png

clean:
	rm -f *.full *.1 *.log mptextmp.mp mptextmp.mpx
