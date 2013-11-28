all:
	gfortran dft.f03 mylib.f03 -o dft
	
clean:
	rm *.o