      subroutine which_arrays
          implicit none

          type triplet
              real, dimension(3) :: vertex
          end type triplet

          type(triplet), dimension(10) :: t

          write(*, *) "t itself is an array of 30 values:", t

          write(*, *) "t(10) should be a scalar triplet structure:", &
                       t(10)

          write(*, *) "t(1)%vertex should be a size 3 array:", &
                       t(1)%vertex

          write(*, *) "t(4)%vertex(1) should be a scalar in vertex at index 1:", &
                       t(4)%vertex(1)

          write(*, *) "t(5:6) should be a size 2 arrays of triplet structs:", &
                       t(5:6)

          write(*, *) "t(5:5) should be a single triplet struct:", &
                       t(5:5)

      end subroutine which_arrays

      program x
          implicit none
          call which_arrays()
      end program x
