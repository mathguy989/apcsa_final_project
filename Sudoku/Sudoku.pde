static int TOP_PAD = 60;
static int SQ_SZ = 45;
SudokuBoard board;
import controlP5.*;
ControlP5 cp5;


void setup() {
  //size(SQ_SZ * 9, SQ_SZ * 9 + TOP_PAD);
  size(405, 465);
  board = new SudokuBoard(false);
  cp5 = new ControlP5(this);
}

void draw() {
  board.drawBoard();
}

void mouseClicked() {
  board.updateSelection();
  if (!board.hasSelection()) SudokuGenerator.fillCells(board);
}

void keyPressed() {
  if (Character.isDigit(key)) {
    if (board.hasSelection()) board.inputVal(Integer.parseInt(key + ""));
  }
}
