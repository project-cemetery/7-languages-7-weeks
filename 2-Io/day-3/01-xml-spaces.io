Builder := Object clone

Builder indent := 0

Builder increaseIndent := method(indent = indent + 1)
Builder decreaseIndent := method(indent = indent -1)

Builder printIndent := method(indent repeat("  " print))
Builder printStart := method(name, increaseIndent; printIndent; writeln("<", name, ">"))
Builder printEnd := method(name, printIndent; decreaseIndent; writeln("</", name, ">"))
Builder printContent := method(content, increaseIndent; printIndent; writeln(content); decreaseIndent)

Builder forward := method(
  Builder printStart(call message name)

  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if (content type == "Sequence", Builder printContent(content))
  )

  Builder printEnd(call message name)
)

Builder main(
  div(
    ul(
      li("Io"),
      li("Lua"),
      li("JavaScript")
    )
  ),
  section(
    p("Hello, world")
  )
)
