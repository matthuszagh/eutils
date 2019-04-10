progs = git-ff-merge cvt-pdf-txt

all: $(progs)

install: all
	install git-ff-merge.sh /usr/local/bin/git-ff-merge
	install cvt-pdf-txt.sh /usr/local/bin/cvt-pdf-txt
	cp sage/noise-figure.sage /home/matt/.sage/scripts/noise-figure.sage
	cp sage/patch-antenna.sage /home/matt/.sage/scripts/patch-antenna.sage
	install aur-rebuild /usr/local/bin/aur-rebuild

uninstall:
	rm -f /usr/local/bin/git-ff-merge
	rm -f /usr/local/bin/cvt-pdf-txt
	rm -f /home/matt/.sage/scripts/noise-figure.sage
	rm -f /home/matt/.sage/scripts/patch-antenna.sage
	rm -r /usr/local/bin/rebuild

clean:
	rm -f $(progs)

.PHONY: all install uninstall clean
