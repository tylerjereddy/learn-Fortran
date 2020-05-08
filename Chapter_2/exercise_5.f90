      subroutine array_work
          real, dimension(11)        :: a
          real, dimension(0:11)      :: b

          write(*, *) "a(1):", a(1)
          write(*, *) "a(10):", a(10)
          write(*, *) "a(11):", a(11)

          write(*, *) "b(0):", b(0)
          write(*, *) "b(10):", b(10)
          write(*, *) "b(11):", b(11)

      end subroutine array_work

      program x
          implicit none
          call array_work()
      end program x
