
f90 = gcc

#intermediate files: average.c average.h 

# linking all c files:
main: main.o average.o 
	${f90} -o xmain main.o average.o 

# Building c files
#
main.o: main.c average.o
	${f90} -c main.c

#
average.o: average.c
	${f90} -c average.c
#
clean:
	-rm *.o *~ *.mod xmaincosmo2$ 
