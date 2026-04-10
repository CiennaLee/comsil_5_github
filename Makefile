CC = gcc
CFLAGS = -c
TARGET = animal.exe
OBJS = dog.o blackcow.o turtle.o main.o

$(TARGET) : $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)

%.o : %.c
	$(CC) $(CFLAGS) -o $@ $<

.PHONY : clean

clean :
	rm -f $(OBJS) $(TARGET)
