CFLAGS= -std=gnu11 -lm -Wall -Wextra -O3 -pedantic -g3 -fopenmp
LFLAGS = -pthread

.PHONY: all
all: ö 


.PHONY: clean
clean:
	$(RM) ö


ö: ö.c
	gcc $(CFLAGS) $^ -o ö $(LFLAGS)
