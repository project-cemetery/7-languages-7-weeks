package me.kamyshev.langs

import akka.actor.Actor
import akka.actor.ActorSystem
import akka.actor.Props

class PageSizer() extends Actor {
  def receive() = {
    case url: String => {
      val page = PageSizer.getPage(url)

      val size = PageSizer.getSize(page)
      val liknsCount = PageSizer.getLinksCount(page)

      println("Size for " + url + ": " + size + ", page contains " + liknsCount + " links")
    }
  }
}

object PageSizer {
  private def getPage(url: String) = scala.io.Source.fromURL(url).mkString
  private def getSize(page: String) = page.length
  private def getLinksCount(page: String) = """<a\s.+?>""".r.findAllIn(page).length

  val system = ActorSystem("pages")

  def printPagesSize(urls: List[String]) =
    for (url <- urls) { 
      val actorLabel = url.filter(!":/.".contains(_))
      system.actorOf(Props[PageSizer], "sizer-for" + actorLabel) ! url
    }
}