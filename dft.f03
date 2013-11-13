program dft
    implicit none
    real, dimension(:), allocatable :: x
    character (len=30) :: input_file, temp
    integer i, n, number_of_lines

    call get_command_argument(1, input_file)

    ! Find how many lines are in the file
    n = number_of_lines(input_file)

    allocate(x(n))

    open(unit=10, file=input_file, status='old', action='read')
    do i=1,n
        read(10,*) x(i)
    enddo

    print *, shape(x)

end program
