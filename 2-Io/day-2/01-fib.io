// Recursion
fibR := method(n, if(n == 2 or n == 1, 1, fibR(n - 1) + fibR(n - 2)))

fibR(1) println
fibR(4) println

// Loop
fibL := method(n,
  nums := list(0, 1, 1);
  if (n > 2,
    for (i, 3, n,
      nums append(nums at(i - 2) + nums at(i - 1))
    );
  );
  nums at(n)
)

fibL(1) println
fibL(4) println
