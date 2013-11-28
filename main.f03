program main
	use libfft
	implicit none
	character (len=30) :: input_file
	complex, dimension(:), allocatable :: x_fft
	integer :: i
	
	call get_command_argument(1, input_file)
	call dft(input_file, x_fft)
	
	do i=1,size(x_fft)
		print *, x_fft(i)
	enddo
end program main