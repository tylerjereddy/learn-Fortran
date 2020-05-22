      subroutine learning_derived_types
          implicit none

          ! type declarations
          type vehicle_registration

              character(len=20) :: color
              character(len=20) :: manufacturer_name
              character(len=20) :: model_name
              integer :: model_year
              integer :: registration_year

          end type vehicle_registration

           type circle
               real :: radius
               real, dimension(3) :: center
           end type circle

          real, dimension(3) :: my_center
          type(vehicle_registration) :: tyler_registration
          type(circle) :: my_circle

          ! exercise the derived types from above
          tyler_registration = vehicle_registration('blue', &
                                                    'Ford', &
                                                    'Mustang', &
                                                    2009, &
                                                    2020)

           write(*, *) "tyler_registration components:", &
                        tyler_registration%color, &
                        tyler_registration%manufacturer_name, &
                        tyler_registration%model_name, &
                        tyler_registration%model_year, &
                        tyler_registration%registration_year


           my_center(1) = 0.0
           my_center(2) = 1.0
           my_center(3) = 2.0

           my_circle = circle(3.00718789, my_center)

           write(*, *) "my_circle components:", &
                       "radius:", my_circle%radius, &
                       "center:", my_circle%center



      end subroutine learning_derived_types

      program x
          implicit none
          call learning_derived_types()
      end program x
