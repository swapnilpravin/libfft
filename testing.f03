program test
	implicit none
	complex :: a
	real :: x
	real, parameter :: PI=4*atan(1.0)
	
	x=3
	a=(1,1)
	
	print *, cmplx(cos(PI),sin(PI))
	print *, exp((0,PI))
	print *, PI
	
end program test