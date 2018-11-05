toFile := method(filename, content,
  f := File with("2-Io/day-2/#{filename}" interpolate)
  f remove
  f openForUpdating
  f write(content)
  f close
)

fromFile := method(filename,
  f := File with("2-Io/day-2/#{filename}" interpolate)
  f openForReading
  contents := f contents
  f close
  contents
)

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
toFile(filename, matrix serialized)

// Deserialize matrix
newMatrix := Matrix deserialize(fromFile(filename))

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
