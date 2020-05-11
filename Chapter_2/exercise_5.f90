      subroutine array_work
          real, dimension(11)         :: a
          real, dimension(0:11)       :: b
          real, dimension(-11:0)      :: c
          real, dimension(10,10)      :: d

          ! first, 10th, 11th, and last elements:
          write(*, *) "a(1):", a(1)
          ! 10th element at +9
          write(*, *) "a(10):", a(10)
          ! 11th element at +10
          ! also the last element
          write(*, *) "a(11):", a(11)

          ! b has an extra start index
          ! at 0
          write(*, *) "b(0):", b(0)
          ! 10th element at +9
          write(*, *) "b(9):", b(9)
          ! 11th element at +10
          write(*, *) "b(10):", b(10)
          ! 12th element at +11 is the last
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

          ! d starts at (1,1)
          write(*, *) "d(1,1):", d(1,1)
          ! the 10th element is 9 rows down
          ! in first column
          write(*, *) "d(10,1):", d(10,1)
          ! the 11th element is the first row
          ! of the second column
          write(*, *) "d(1,2):", d(1,2)
          ! the last element is the 10th row
          ! of the 10th column
          write(*, *) "d(10,10):", d(10,10)

      end subroutine array_work

      program x
          implicit none
          call array_work()
      end program x
