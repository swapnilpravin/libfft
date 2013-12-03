program test
	use constants
	use mylib
	implicit none
	
	integer, parameter :: N = 1000
	real, dimension(N) :: x
	integer :: i=0
	
	call linspace(0., 10*PI, N, x)
	open(unit=10, file="data.dat", status="replace", action="write")
	do i=1,N
		write(10,*) x(i), (sin(10*x(i)) + sin(15*x(i)))
	enddo
	close(10)
end program test