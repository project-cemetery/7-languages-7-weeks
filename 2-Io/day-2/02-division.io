origDiv := Number getSlot("/")

Number / := method (i, 
    if (i != 0, origDiv(i), 0)
)

(12 / 5) println
(10 / 5) println
(10 / 0) println
