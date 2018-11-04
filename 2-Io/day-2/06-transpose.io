Matrix transpose := method(
  newY := self rows at(0) size
  newX := self rows size
  newMatrix := Matrix dim(newY, newX)
  for(x, 1, newX,
    for(y, 1, newY,
      newMatrix set(y, x, self get(x, y))
    )
  )
  newMatrix
)

original := Matrix dim(3, 2)
original set(1, 2, "Hello")
original set(3, 1, "Privet")
original set(2, 2, "Nihao")

transposed := original transpose

for(x, 1, 3,
    for(y, 1, 2,
      ok := transposed get(y, x) == original get(x, y);
      if (ok, "Ok" println, "Nooooo" println)
    )
  )
