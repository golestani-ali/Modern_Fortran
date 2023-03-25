program tsunami

    implicit none

    integer :: i,n 
    integer, parameter :: grid_size
    integer, parameter :: num_time_steps

    real, parameter :: dt, dx, c

    grid_size = 100
    num_time_steps = 100

    dt = 1.
    dx = 1.
    c = 1.

    real :: h(grid_size), dh(grid_size)

    if (grid_size <= 0) stop "grid_size must be greater than zero!"
    if (dt <= 0) stop "dt must be greater than zero!"
    if (dx <= 0) stop "dx must be greater than zero!"
    if (c <= 0) stop "c must be greater than zero!"



end program tsunami
