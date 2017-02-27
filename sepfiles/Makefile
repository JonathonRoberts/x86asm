CC=gcc
CFLAGS +=-c -Wall
AS=nasm
ASFLAGS +=-f elf
LDFLAGS=
CSOURCES = main.c
OBJECTS=$(SOURCES:.c=.o)
OBJECTS+=$(ASSOURCES:.asm=.o)
EXECUTABLE=a.out

all: .as $(EXECUTABLE)

.as:
	$(AS) $(ASFLAGS) *.asm

$(EXECUTABLE): add.o $(CSOURCES)
	    $(CC) $(LDFLAGS) -o $@ $^

clean:
	rm $(EXECUTABLE) *.o
