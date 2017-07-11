(Make a cone, primararily for cutting a aluminum axicon lens, for Cen Lab, WVU.)
(For small discs that are screwed onto chuck.)
G01 G18 G90 G71 G94 G97
#100 = 5.0 (Angle of cone in degrees, or the angle of the slope from the flat surface)
#107 = -4.625 (X-axis position of bottom of the cone, usually the radius of the lens)
#105 = ABS[#107] * TAN[#100] (depth of cone in mm)
#200=1			  (counter)
#201=5			  (#of passes)
#202=0.010 (depth of plunge per pass 0.001=1micron)
M4S2000          (Spindle CCW @ 2000rpm)
X[#107 - 5] Z20 F500     (Park Position)
X[#107 - 1] Z1	F100           (Move to OD)
M26				  (spray mist #1)
M27				  (spray mist #2)
WHILE[#200 LE #201]DO1
#210=0.00-[#200*#202]
X[#107 - 1] Z[#210]	F50      (Move to cutting depth)
X[#107] Z[#210]	F10 (Cutting starting point)
X0 Z[#210 + #105]  F10 (cut cone segment)
X0 Z2 F20 (Pull clear)
X[#107 - 1] F200		  (back to start)
#200=#200+1		  (increment)
END1
G92 Z[2-#210] (reset zero so no new surface finding needed) 
X[#107-5] Z20 F500   (Park Position)
M29               (spray mist off)
M05               (spindle off)
M30

