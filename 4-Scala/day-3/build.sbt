name := "7langs"
 
version := "1.0"
 
scalaVersion := "2.12.8"
 
resolvers += "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/"

libraryDependencies += "org.scala-sbt" %% "compiler-bridge" % "1.2.5" % Test
libraryDependencies += "com.typesafe.akka" %% "akka-actor" % "2.4.16"

Compile/mainClass := Some("me.kamyshev.langs.Main")