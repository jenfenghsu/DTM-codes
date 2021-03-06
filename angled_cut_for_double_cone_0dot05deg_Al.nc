(Cuts a peak at some radius of disc, instead of the center, primararily for cutting a aluminum axicon mirror.)
(Best to use 0.25mm radius tool)
(To prevent damage to tool AND avoid center straight reflection when used as axicon, drill a 1mm thru hole at center before diamond turning.)
G01 G18 G90 G71 G94 G97
#100 = 0.05 (Angle of cone in degrees, or the angle of the slope from the flat surface)
#102 = 12.7 (X-axis position of bottom of the cone, usually the radius of the lens, R)
#103 = 1.8  (X-axis position of the peak, r0)
M3S2000          (Spindle CW @ 2000rpm)
X[#102+10] Z20 F500     (Park Position)
X[#102 + 1] Z1	F100           (Move to OD)
M26				  (spray mist #1)
M27				  (spray mist #2)
X[#102 + 1] Z[-#110]	F100      (Move to slightly past the start of the cut)
X[#102] Z[-#110]	F10       (Cutting starting point)
X[#103 - 1] Z[#102 * TAN[#100] - #103 * TAN[#100]]  F10 (cut outer cone segment, and pull 1mm over for clearance)
X[#103 + 1] Z[#102 * TAN[#100] - #103 * TAN[#100]]  F10 (move over to the other angle for inner cone segment)
X0 Z[#102 * TAN[#100] - 2.0 * #103 * TAN[#100]]  F10 (cut inner cone segment)
X0 Z2 F20 (Pull clear)
X15 Z20 F500   (Park Position)
M29              (Spray Mist Off)
M05
M30
