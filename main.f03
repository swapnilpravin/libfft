program main
	use libfft
	implicit none
	character (len=30) :: input_file
	complex, dimension(:), allocatable :: x_fft
	integer :: i
	
	call get_command_argument(1, input_file)
	call dft(input_file, x_fft)
	
	open(unit=20, file="data_fft.dat", status="replace", action="write")
	do i=1,size(x_fft)/2
		write(20,*) sqrt(real(x_fft(i)*conjg(x_fft(i))))
	enddo
	close(20)
end program main