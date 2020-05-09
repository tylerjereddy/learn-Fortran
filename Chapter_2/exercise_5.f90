      subroutine array_work
          real, dimension(11)         :: a
          real, dimension(0:11)       :: b
          real, dimension(-11:0)      :: c

          ! first, 10th, 11th, and last elements:
          write(*, *) "a(1):", a(1)
          write(*, *) "a(10):", a(10)
          write(*, *) "a(11):", a(11)

          write(*, *) "b(0):", b(0)
          write(*, *) "b(10):", b(10)
          write(*, *) "b(11):", b(11)

          ! c starts at -11
          write(*, *) "c(-11):", c(-11)
          ! counting the first element, 10th
          ! element is at +9
          write(*, *) "c(-11 + 9):", c(-11 + 9)
          ! 11th element is one beyond that
          write(*, *) "c(-11 + 10):", c(-11 + 10)
          ! 12 element is the last one
          write(*, *) "c(-11 + 11):", c(-11 + 11)

      end subroutine array_work

      program x
          implicit none
          call array_work()
      end program x
