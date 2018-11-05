random := method(
  (Random value * 100) ceil
)

number := random()

for (i, 1, 10,
  x := File standardInput readLine asNumber;
  if (x == number,
    "Yep" println; break
  );

  if (x > number,
    "your > number" println,
    "your < number" println
  )
)

"Real number: " println
number println
