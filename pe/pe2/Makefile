CC=gcc
CFLAGS +=-c -Wall
AS=nasm
ASFLAGS +=-f elf
LDFLAGS=
CSOURCES = main.c
OBJECTS=$(SOURCES:.c=.o)
#OBJECTS+=$(ASSOURCES:.asm=.o)
EXECUTABLE=pe2

all: .as $(EXECUTABLE)

.as:
	$(AS) $(ASFLAGS) *.asm

$(EXECUTABLE): fib.o $(CSOURCES)
	    $(CC) $(LDFLAGS) -o $@ $^

clean:
	rm $(EXECUTABLE) *.o
