#
# Makefile
#
# Makefile for viewimage

CC ?= clang
CFLAGS ?= -Wall

SOURCES	= main.c fb_display.c vt.c transforms.c
OBJECTS	= ${SOURCES:.c=.o}

OUT	= viewimage

all: $(OUT)
	@echo Build DONE.

$(OUT): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $(OUT) $(OBJECTS) $(LIBS)

clean:
	rm -f $(OBJECTS) $(OUT)

install: $(OUT)
	install -D $(OUT) $(bindir)
	[ -d $(mandir)/man1 ] || mkdir -p $(mandir)/man1
	gzip -9c $(OUT).1 > $(mandir)/man1/$(OUT).1.gz

uninstall: $(bindir)/$(OUT)
	rm -f $(bindir)/$(OUT)
	rm -f $(mandir)/man1/$(OUT).1.gz

