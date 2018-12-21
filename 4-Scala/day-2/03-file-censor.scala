import scala.io.Source

trait Censor {
  private lazy val words = Source
    .fromFile("dict.txt")
    .getLines
    .toList
    .map(_.split(":"))
    .map({
      case Array(key, value) => Some((key, value))
      case _ => None
    })
    .flatten
    .groupBy(_._1)
    .map { case (key, value) => (key, value.map(_._2).head) }

  def censor (word: String): String = words
    .getOrElse(word, word)
}

class Person() extends Censor {
}

val me = new Person()

val positiveResult = me.censor("Death")
val negativeResult = me.censor("Hello")

println(positiveResult, negativeResult)
