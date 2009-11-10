CC = gcc
CFLAGS = -Wall -ansi -std=c99 -pedantic -g
DESTDIR = /usr/local

vcp : vcp.o lists.o file.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

vcp.o : vcp.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ -c $<

lists.o : lists.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ -c $<

file.o : file.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ -c $<

install: vcp
	mkdir -p $(DESTDIR)/bin
	install -m 755 vcp $(DESTDIR)/bin/vcp

clean :
	rm -f vcp *.o

.PHONY: clean install
