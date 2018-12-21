trait Censor {
  private val words = Map(
    "Shoot" -> "Pucky",
    "Darn" -> "Beans",
  )

  def censor (word: String): String = words
    .getOrElse(word, word)
}

class Person() extends Censor {
}

val me = new Person()

val positiveResult = me.censor("Shoot")
val negativeResult = me.censor("Hello")

println(positiveResult, negativeResult)
