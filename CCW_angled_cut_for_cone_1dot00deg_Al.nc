(Make a cone, primararily for cutting a aluminum axicon lens.)
(For small discs that are screwed onto chuck.)
G01 G18 G90 G71 G94 G97
#100 = 1.0 (Angle of cone in degrees, or the angle of the slope from the flat surface)
#107 = -3.3 (X-axis position of bottom of the cone, usually the radius of the lens)
#105 = ABS[#107] * TAN[#100] (depth of cone in mm)
M4S2000          (Spindle CW @ 2000rpm)
X[#107 - 5] Z20 F500     (Park Position)
X[#107 - 1] Z1	F100           (Move to OD)
M26				  (spray mist #1)
M27				  (spray mist #2)
X[#107 - 1] Z0	F50      (Move to cutting depth)
X[#107] Z0	F10 (Cutting starting point)
X0 Z[#105]  F10 (cut cone segment)
X0 Z2 F20 (Pull clear)
X[#107-5] Z20 F500   (Park Position)
M29              (Spray Mist Off)
M05
M30
