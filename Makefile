progs = git-ff-merge

all: $(progs)

install: all
	install git-ff-merge.sh /usr/local/bin/git-ff-merge

uninstall:
	rm -f /usr/local/bin/git-ff-merge

clean:
	rm -f $(progs)

.PHONY: all install uninstall clean
