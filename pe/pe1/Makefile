CC=gcc
CFLAGS +=-c -Wall
AS=nasm
ASFLAGS +=-f elf
LDFLAGS=
CSOURCES = main.c
OBJECTS=$(SOURCES:.c=.o)
#OBJECTS+=$(ASSOURCES:.asm=.o)
EXECUTABLE=pe2

all: .as $(EXECUTABLE) cleano

.as:
	$(AS) $(ASFLAGS) *.asm
.c.o:
	    $(CC) $(CFLAGS) -o $@ -c $<
.asm.o:
	    $(CC) $(ASFLAGS) -o $@ -c $<

$(EXECUTABLE): *.o
	    $(CC) $(LDFLAGS) -o $@ $^

clean:
	rm $(EXECUTABLE) *.o
cleano:
	rm *.o



