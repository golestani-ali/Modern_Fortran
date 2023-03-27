program tsunami

    implicit none

    integer :: i,n 
    integer, parameter :: grid_size
    integer, parameter :: num_time_steps
    integer, parameter :: icenter = 25
    integer, parameter :: decay = 0.02

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

    init_wave: do i = 1, grid_size
        h(i) = exp(-decay * (i - icenter)**2)
    end do init_wave
    
    time_loop: do n = 1, num_time_steps

        dh(1) = h(1) - h(grid_size)

        do i = 2, grid_size
            dh(i) = h(i) - h(i-1)
        end do 

        do i = 1, grid_size
            h(i) = h(i) - c * dh(i) / dx * dt
        end do 

        print *, n, h

        end do time_loop


end program tsunami
