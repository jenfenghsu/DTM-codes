(Make a cone, primararily for cutting a plexiglas axicon lens.)
G01 G18 G90 G71 G94 G97
#100 = 0.6 (Angle of cone in degrees, or the angle of the slope from the flat surface)
#107 = 12.7 (X-axis position of bottom of the cone, usually the radius of the lens)
#105 = #107 * TAN[#100] (depth of cone in mm)
M3S2000          (Spindle CW @ 2000rpm)
X[#107+10] Z20 F500     (Park Position)
X[#107 + 1] Z1	F100           (Move to OD)
M26				  (spray mist #1)
M27				  (spray mist #2)
X[#107 + 1] Z0	F50      (Move to slightly past the start of the cut)
X[#107] Z0	F15       (Cutting starting point)
X0 Z[#105]  F15 (cut cone segment)
X0 Z2 F20 (Pull clear)
X[#105+10] Z20 F500   (Park Position)
M29              (Spray Mist Off)
M05
M30
