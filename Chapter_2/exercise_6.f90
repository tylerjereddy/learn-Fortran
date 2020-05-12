      subroutine char_array_work
          implicit none
          character(len=10), dimension(0:5, 3) :: c

          ! should write a len 10 char constant
          ! at row 2, column 3:
          write(*, *) "c(2, 3): ", c(2, 3)

          ! c(6, 2) should be out of bounds for
          ! rows
          !write(*, *) "c(6, 2): ", c(6, 2)

          ! c(0, 3) should write a len 10 char
          ! constant from row 0, column 3
          write(*, *) "c(0, 3): ", c(0, 3)

          ! c(4,3)(:) should write the full char
          ! constant at row 4, column 3
          write(*, *) "c(4, 3)(:): ", c(4, 3)(:)
      end subroutine char_array_work

      program x
          implicit none
          call char_array_work()
      end program x
