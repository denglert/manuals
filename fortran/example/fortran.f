c Fortran extensions
c Fortran 77 = .f
c Fortran 90 = .f90

c Function definition
      FUNCTION random_normal() RESULT(fn_val)
      real*8 fn_val

      ...
      fn_val = v/u
      RETURN
      END FUNCTION

c Subroutine definition


c Use/load in Module called 'random' defined in random/random.f90
      USE random

c Declare variables
      real*8 val
      integer*8 ncalls

c Define variables
      ncalls = 100

c Fortran loop
      do i=1,ncalls
         val = random_normal()
c        print *, 'val: ', val
         write *,
      end do

      END
