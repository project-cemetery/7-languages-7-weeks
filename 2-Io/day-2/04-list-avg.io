List myAverage := method(
  sum := 0;
  self foreach(_, value, sum = sum + value);
  if (self size > 0,
    sum / self size,
    Exception raise("Averange of empty list")
  )
)

list(1, 2) myAverage println
list() myAverage println
list(1, "2") myAverage println