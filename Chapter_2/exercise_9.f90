      subroutine entity_specifications
          implicit none

          ! integer variable inside the range -10**20 and 10**20
          integer, parameter :: k20 = selected_int_kind(20)

          write(*, *) "part a) integer range:", range(-17_k20)

      end subroutine entity_specifications

      program x
          implicit none
          call entity_specifications()
      end program x
