	SUBROUTINE MODSHAPEFFD()

	USE VAR
	
	REAL :: BERNS2	


	DO 30 intH = 1,NumElements
	
	! The subroutine that is used for modifying the shape of the 
	! object when the FFD lattice points are moved

	intn = NXFFD - 1
	intm = NYFFD - 1
	intl = NZFFD - 1

	DO 10 intS = 1,NumSolidBoundaryPoints(intH,1)
	realXNew = 0.0
	realYNew = 0.0
	realZNew = 0.0

	realT = SolidBoundaryPoints(intH,intS,4)
	realU = SolidBoundaryPoints(intH,intS,5)
	realV = SolidBoundaryPoints(intH,intS,6)	
	
	IF ((realT .LE. 1) .AND. (realT .GE. 0)) THEN
	IF ((realU .LE. 1) .AND. (realU .GE. 0) ) THEN
	IF ((realV .LE. 1) .AND. (realV .GE. 0)) THEN
	
	DO 20 intI=0, intn
	DO 20 intJ=0, intm
	DO 20 intK=0, intl
		realXNew = realXNew + BERNS2(intI,intn,realT)*
     . 	BERNS2(intJ,intm, realU)*BERNS2(intK,intl, realV)*
     . 	FFDPoints(intH,intI+1,intJ+1, intK+1,1)

		realYNew = realYNew + BERNS2(intI,intn,realT)*
     . 	BERNS2(intJ,intm, realU)*BERNS2(intK,intl, realV)*
     . 	FFDPoints(intH,intI+1,intJ+1, intK+1,2)

		realZNew = realZNew + BERNS2(intI,intn,realT)*
     . 	BERNS2(intJ,intm, realU)*BERNS2(intK,intl, realV)*
     . 	FFDPoints(intH,intI+1,intJ+1, intK+1,3)

  20	CONTINUE	

	SolidBoundaryPoints(intH,intS,1) =realXNew
	SolidBoundaryPoints(intH,intS,2) =realYNew
	SolidBoundaryPoints(intH,intS,3) =realZNew

	ENDIF
	ENDIF
	ENDIF

  10	CONTINUE
	
  30	CONTINUE

	END


!The Bernstein function takes Integer I, Integer N and Real T as inputs
	REAL FUNCTION BERNS2(I,N,T)
	INTEGER :: FACT2, I,N
	REAL :: T
	
	rNChooseI = REAL(FACT2(N))/REAL((FACT2(I)*FACT2(N-I)))
	rMultiplier = ((1-T)**(N-I))*((T**I))

	BERNS2 = rNChooseI*rMultiplier
	END
			

! Takes an integer iI and returns its factorial
	INTEGER FUNCTION FACT2(iI)
	ANS = 1
	!WRITE(*,*) "INT(I): ", INT(iI)
	DO 30 k = 1, INT(iI)
		ANS = ANS*k	
   30	CONTINUE
	!WRITE(*,*) "Ans: ", ANS
	FACT2 = ANS
	END



