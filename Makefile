all:
	gfortran main.f03 dft.f03 mylib.f03 -o dft
	
clean:
	rm *.o