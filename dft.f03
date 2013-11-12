program dft
    implicit none
    real, dimension(:), allocatable :: x
    character (len=30) :: input_file, temp
    integer i

    call get_command_argument(1, input_file)

    ! Find how many lines are in the file
    open(unit=10, file=input_file, status='old', action='read')
    i=0
    do
        read(10,*) temp
        if (temp.ne."") then
            i=i+1
        else 
            exit
        endif
    enddo

    print *, i

end program
