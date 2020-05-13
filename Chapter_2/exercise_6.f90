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

          ! c(5)(2:3) apparently results in a rank mismatch
          !write(*, *) "c(5)(2:3): ", c(5)(2:3) 

          ! c(5,3)(9) should be row 5, column 3, sub-indexing
          ! into element 9 of the character constant
          ! but it is ACTUALLY a syntax error (would need 9:9)
          !write(*, *) "c(5,3)(9): ", c(5,3)(9)

          ! c(4:3)(2,1) seems like it should be an invalid
          ! indexing into an empty element
          !write(*, *) "c(4:3)(2,1): ", c(4:3)(2,1)

          ! this is the "fixed" version of the single
          ! character selection from above
          write(*, *) "c(5,3)(9:9): ", c(5,3)(9:9)

          ! c(2, 1)(4:8) should be row 2, column 1
          ! character constant slice 4 through 8 indices
          write(*, *) "c(2, 1)(4:8):", c(2, 1)(4:8)
          
          ! Fortran indexing starts by default at 1,
          ! so the character constant indexing here
          ! looks out of bounds to me:
          !write(*, *) "c(3, 2)(0:9):", c(3, 2)(0:9)
          ! yes !

          ! this looks out of bounds for the actual array
          ! Fortran reports a rank mismatch too, since we've
          ! left out the 2nd dimension
          !write(*, *) "c(5:6):", c(5:6)

          ! could select the entire array of char constants?
          ! nope, Fortran basically reports invalid syntax
          !write(*, *) "c(,):", c(,)
      end subroutine char_array_work

      program x
          implicit none
          call char_array_work()
      end program x
