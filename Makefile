CC     = gcc
CFLAGS = -Wall -Wextra -pthread
OBJ    = server.o http.o threadpool.o queue.o list.o
EXE    = server

$(EXE): $(OBJ)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJ)

clean:
	rm $(OBJ) $(EXE)

scp:
	scp *.c *.h Makefile ubuntu@115.146.93.189:comp30023/Assignment1

kill:
	killall -9 server
