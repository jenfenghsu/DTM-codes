(Make a concave cone or indent, primararily for cutting a aluminum axicon mirror for Cen Lab, WVU.)
G01 G18 G90 G71 G94 G97
#100 = 5.0 (Angle of cone in degrees, or the angle of the slope from the flat surface)
#107 = 12.7 (X-axis position of bottom of the cone, usually the radius of the lens)
#105 = #107 * TAN[#100] (depth of cone in mm)
#200=1			  (counter)
#201=5			  (#of passes)
#202=0.010 (depth of plunge per pass 0.001=1micron)
M3S2000          (Spindle CW @ 2000rpm)
X[#107+10] Z20 F500     (Park Position)
X[#107 + 1] Z3	F50           (Move to OD)
M26				  (spray mist #1)
M27				  (spray mist #2)
WHILE[#200 LE #201]DO1
#210=0.00-[#200*#202]
X[#107 + 1] Z[#105 + #210]	F50      (Move to slightly past the start of the cut)
X[#107] Z[#105 + #210]	F10       (Cutting starting point)
X0 Z[0.0 + #210] F10 (cut cone segment)
X0 Z2 F20 (Pull clear)
X[#107 + 1] 	F50		  (back to start)
#200=#200+1		  (increment)
END1
G92 Z[2-#210] (reset zero so no new surface finding needed) 
X[#105+10] Z20 F500   (Park Position)
M29               (spray mist off)
M05               (spindle off)
M30