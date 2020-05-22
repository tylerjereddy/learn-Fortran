      subroutine learning_derived_types
          implicit none

          type vehicle_registration

              character(len=20) :: color
              character(len=20) :: manufacturer_name
              character(len=20) :: model_name
              integer :: model_year
              integer :: registration_year

          end type vehicle_registration

          type(vehicle_registration) :: tyler_registration

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


      end subroutine learning_derived_types

      program x
          implicit none
          call learning_derived_types()
      end program x
