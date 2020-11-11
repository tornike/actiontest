CC = gcc
CFLAGS_RELEASE = -Wall -c
# HEADERS = 

exec: main.o # $(HEADERS)
	$(CC) $^ -o $@

main.o: main.c
	$(CC) $(CFLAGS_RELEASE) $< -o $@

clean:
	rm *.o exec

test:
	echo $(wildcard *.c)