program dft
    implicit none
    real, dimension(:), allocatable :: x
    character (len=30) :: input_file, temp
    integer i, n, number_of_lines
    
    real, dimension(:), allocatable :: x_lin

    call get_command_argument(1, input_file)

    ! Find how many lines are in the file
    n = number_of_lines(input_file)

    allocate(x(n))

    call loadArrayFromFile(input_file, n, x)
    
    allocate(x_lin(11))
    call linspace(0.0, 10.0, 11, x_lin)

	do i=1,size(x_lin,1)
		print *, x_lin(i)
	enddo

end program
