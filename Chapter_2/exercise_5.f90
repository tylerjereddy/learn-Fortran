      subroutine array_work
          real, dimension(11)     :: a

          write(*, *) "a(1):", a(1)
          write(*, *) "a(10):", a(10)
          write(*, *) "a(11):", a(11)
      end subroutine array_work

      program x
          implicit none
          call array_work()
      end program x
