static int TOP_PAD = 60;
static int SQ_SZ = 45;
SudokuBoard board;
void setup() {
  //size(SQ_SZ * 9, SQ_SZ * 9 + TOP_PAD);
  size(405, 465);
  board = new SudokuBoard();
}

void draw() {
  board.drawBoard();
}

void mouseClicked() {
  board.updateSelection();
  if (!board.hasSelection()) System.out.println(board.boardLegal());
}

void keyPressed() {
  if (Character.isDigit(key)) {
    if (board.hasSelection()) board.inputVal(Integer.parseInt(key + ""));
  }
}
