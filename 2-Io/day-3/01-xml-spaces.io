Builder := Object clone

Builder indent := 0

Builder increaseIndent := method(
  Builder indent = Builder indent + 1
)
Builder decreaseIndent := method(
  Builder indent = Builder indent -1 
)

Builder printIndent := method(
  Builder indent repeat("  " print)
)

Builder printStart := method(name,
  Builder increaseIndent
  Builder printIndent
  writeln("<", name, ">")
)

Builder printEnd := method(name,
  Builder printIndent
  Builder decreaseIndent
  writeln("</", name, ">")
)

Builder printContent := method(content,
  Builder increaseIndent
  Builder printIndent
  writeln(content)
  Builder decreaseIndent
)

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
