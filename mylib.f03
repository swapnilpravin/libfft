integer function number_of_lines(input_file)
    implicit none
    integer temp, IOstatus, i
    character (len=30) :: input_file

    open(unit=10, file=input_file, status="old", action="read")
    do
        read(10,*,iostat=IOstatus) temp
        if (iostatus < 0) then
            exit
        else
            i=i+1
        endif
    enddo

    number_of_lines = i
    return

end

