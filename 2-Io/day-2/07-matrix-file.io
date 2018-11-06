// Transform filename to path
Sequence here := method("2-Io/day-2/#{self}" interpolate)

Sequence toFile := method(filename,
  File with(filename here) remove openForUpdating write(self) close
)

Sequence fromFile := method(filename,
  File with(filename here) openForReading contents
)

Sequence toMatrix := method(Matrix deserialize(self))

Matrix serialized := method(self rows serialized)
Matrix deserialize := method(string, 
  newMatrix := Matrix clone;
  newMatrix rows := doString(string)
  newMatrix
)

matrix := Matrix dim(3, 2)
matrix set(1, 2, "Hello")
matrix set(3, 1, "Privet")
matrix set(2, 2, "Nihao")

filename := "data.txt"

// Serialize matrix
matrix serialized toFile(filename)

// Deserialize matrix
newMatrix := Sequence fromFile(filename) toMatrix

// Check serialization-deserealization correction
for(x, 1, 3,
  for(y, 1, 2,
    if (
      newMatrix get(x, y) == matrix get(x, y),
      "Ok" println,
      "Nooooo" println
    )
  )
)