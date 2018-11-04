Matrix := Object clone
Matrix rows := list()
Matrix set := method(x, y, value, self rows at(y - 1) atPut(x - 1, value))
Matrix get := method(x, y, self rows at(y - 1) at(x - 1))

dim := method(x, y,
  instance := Matrix clone;
  for(i, 1, y,
    row := list();
    for(i, 1, x,
      row append(nil)
    );
    instance rows append(row)
  );
  instance
)

myMatrix := dim(3, 2)
myMatrix rows println

myMatrix set(3, 2, "Hello")
myMatrix rows println

myMatrix get(3, 2) println
