def lengthSum(strings: List[String]) = strings
  .map(_.length)
  .foldLeft(0) { (sum, i) => sum + i }

val result = lengthSum(List("hello", "world"))
println(result)