      subroutine entity_specifications
          implicit none

          ! integer variable inside the range -10**20 and 10**20
          integer, parameter :: k20 = selected_int_kind(20)
          ! a real variable with a minimum of 12 decimal digits and
          ! of precision and range of 10**-100 to 10**100
          integer, parameter :: long = selected_real_kind(12, 100)

          write(*, *) "part a) integer range:", range(-17_k20)
          write(*, *) "part b) real range:", range(1.7_long)

      end subroutine entity_specifications

      program x
          implicit none
          call entity_specifications()
      end program x
