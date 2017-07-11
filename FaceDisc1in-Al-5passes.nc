(face flat surface [1in disc])
G01 G18 G40 G90 G71 G94 G97
M3S2000           (spindle cw @ 2000rpm)
#100=1			  (counter)
#101=3			  (#of passes)
#102=0.010 (depth of plunge per pass 0.001=1micron)
X15.0 Z20.0 F500  (park position)
X13.50 Z2.00 F200  (move to start position)
M26				  (spray mist #1)
M27				  (spray mist #2)
WHILE[#100 LE #101]DO1
#110=0.00-[#100*#102]
Z[#110] F50  (plunge, adding #102 per pass)
X0.0 F10         (cut face)
Z2.00 F100        (move Z away from part)
X13.5 F200		  (back to start)
#100=#100+1		  (increment)
END1
G92 Z[2-#110] (reset zero so no new surface finding needed) 
X15.0 Z20 F500      (park position)
M29               (spray mist off)
M05               (spindle off)
M30
