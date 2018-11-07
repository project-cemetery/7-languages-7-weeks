Builder := Object clone

Builder indent := 0

Builder increaseIndent := method(indent = indent + 1)
Builder decreaseIndent := method(indent = indent -1)

Builder printIndent := method(indent repeat("  " print))
Builder printStart := method(name, attrs,
  increaseIndent; printIndent;

  attrsString := ""
  attrs foreach(k, v,
    attrsString := "#{attrsString} #{k}=\"#{v}\"" interpolate
  )
  
  writeln("<", name, attrsString, ">")
)
Builder printEnd := method(name, printIndent; decreaseIndent; writeln("</", name, ">"))
Builder printContent := method(content, increaseIndent; printIndent; writeln(content); decreaseIndent)

Builder forward := method(
  if (
    call message arguments at(0) name == "curlyBrackets",
    attrs := doMessage(call message arguments at(0)),
    attrs := Map clone
  )
  
  printStart(call message name, attrs)

  call message arguments  foreach(
    arg,
    content := self doMessage(arg);
    if (content type == "Sequence", printContent(content))
  )

  printEnd(call message name)
)
