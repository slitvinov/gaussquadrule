.POSIX:
.SUFFIXES:
.SUFFIXES: .c
.SUFFIXES: .a60

MARST_LDFLAGS = -static  -L../lib -lgaussquadrule -lalgol -lm
CFLAGS = -Og -g
MARST = marst
M = \
moment\

all: $M
.c:; $(CC) -o $@ $(CFLAGS) $< $(LDFLAGS) $(MARST_LDFLAGS)
.a60.c:; $(MARST) $< -o $@

clean:; -rm $M
