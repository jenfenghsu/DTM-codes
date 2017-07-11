(face flat surface [1in disc])
G01 G18 G40 G90 G71 G94 G97
M3S2000           (spindle cw @ 2000rpm)
X15.0 Z20.0 F500  (park position)
X13.50 Z2.00 F200  (move to start position)
M26				  (spray mist #1)
M27				  (spray mist #2)
Z0.00 F50         (move Z past surface of part)
X0.00 F10         (cut face)
Z2.00 F100        (move Z away from part)
X15.0 Z20 F500      (park position)
M29               (spray mist off)
M05               (spindle off)
M30
