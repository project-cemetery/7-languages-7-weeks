class Game() {
  private var cells = List.fill(3)(
    List.fill(3)("")
  )

  val showCells = () => cells

  val checkWin = () => {
    val diagonals = List(
      List(cells(0)(0), cells(1)(1), cells(2)(2)),
      List(cells(0)(2), cells(1)(1), cells(2)(0)),
    )
    val rows = cells
    val columns = List(
      List(cells(0)(0), cells(1)(0), cells(2)(0)),
      List(cells(0)(1), cells(1)(1), cells(2)(1)),
      List(cells(0)(2), cells(1)(2), cells(2)(2)),
    )

    val winCombinations = rows ++ columns ++ diagonals

    winCombinations.exists(combination => {
      combination.forall(_ == "O") || combination.forall(_ == "X")
    })
  }

  private val addValue = (value: String) => (x: Int, y: Int) => {
    val positionX = x - 1
    var positionY = y - 1

    val row = cells(positionX)
    val cell = row(positionY)

    if (cell != "") throw new IllegalArgumentException("cell already filled");

    val newRow = row.patch(positionY, Seq(value), 1)
    var newCells = cells.patch(positionX, Seq(newRow), 1)

    cells = newCells
  }

  val addZero = addValue("O")
  val addCross = addValue("X")
}

val game = new Game()
game.addZero(3, 3)
game.addZero(2, 3)
game.addZero(1, 3)
game.addCross(2, 1)
println(game.checkWin())
println(game.showCells())
