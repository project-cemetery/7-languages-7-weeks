matrixSum := method(matrix,
  sum := 0;
  matrix foreach(_, row,
    row foreach(_, value,
      sum = sum + value
    )
  );
  sum
)

matrixSum(list(
  list(1, 2),
  list(4, 12)
)) println