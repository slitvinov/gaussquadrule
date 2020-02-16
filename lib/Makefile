.POSIX:
.SUFFIXES: .c .o .a60
.PHONY: lint clean

CFLAGS = -Og -g
MARST = marst
L = libgaussquadrule.a
O = \
classicorthopoly.o\
genorthopoly.o\
arcsin.o\
gamma.o\

$L: $O; ar r $@ $O && ranlib $@
.c.o:; $(CC) $(CFLAGS) $< -c
.a60.c:; $(MARST) $< -o $@

.c:
%: %.c

lint:; make CFLAGS='-Wall -Wextra -g -O2'
clean:; rm -f $L $O
