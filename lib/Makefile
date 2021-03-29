.POSIX:
.SUFFIXES:
.SUFFIXES: .c .o .a60

CFLAGS = -Og -g
MARST = marst
L = libgaussquadrule.a
O = \
arcsin.o\
classicorthopoly.o\
gamma.o\
gaussquadrule.o\
genorthopoly.o\
printreal.o\

$L: $O; ar r $@ $O && ranlib $@
.c.o:; $(CC) $(CFLAGS) $< -c
.a60.c:; $(MARST) $< -o $@

clean:; rm -f $L $O
