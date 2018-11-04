Car := Object clone
Car speed ::= 12
Car slotNames println

Animal := Object clone
Animal speed := 11
Animal slotNames println

Human := Object clone

// newSlot("age", 11)
Human age ::= 11
Human age println

// setSlot("age", 12)
Human age := 12
Human age println

// updateSlot("age", 13)
Human age = 13
Human age println

// Error! use := instead
Human name = "Nick"
