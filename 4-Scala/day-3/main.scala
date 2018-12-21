package me.kamyshev.langs

object Main extends App {
  val urls = List(
    "https://twitter.com",
    "https://google.com",
  )

  PageSizer.printPagesSize(urls)
}