OperatorTable addAssignOperator(":", "atPutNumber")

curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
    r doString(arg asString)
  )
)

Map atPutNumber := method(
  self atPut(
    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
    call evalArgAt(1)
  )
)

Builder main(
  div(
    ul(
      li({"class": "item", "id": "12"}, "Io"),
      li("Lua"),
      li("JavaScript")
    )
  ),
  section(
    p("Hello, world")
  )
)
