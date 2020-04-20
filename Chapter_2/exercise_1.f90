      subroutine test
        implicit none
        logical :: result

        result = 'b' < 'm'
        write(*, *) "result:", result
        result = 8 < 2
        write(*, *) "result:", result
        result = '*' > 'T'
        write(*, *) "result:", result
        result = '$' < '/'
        write(*, *) "result:", result
        result = '' > 'A'
        write(*, *) "result:", result
        ! CHARACTER and INTEGER not supported for comparison operator:
        ! result = '' < 6
        ! write(*, *) "result:", result
      end subroutine test

      program x
          implicit none
          call test()
      end program x
