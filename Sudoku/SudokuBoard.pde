class SudokuBoard {
  SudokuSquare[][] board;
  
  SudokuBoard() {
    board = new SudokuSquare[9][9];
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 0; j++) {
        board[i][j] = new SudokuSquare();
      }
    }
  }
  
  void drawBoard() {
    for (SudokuSquare[] row : board) {
      for (SudokuSquare square : row) {
        square.drawSquare();
      }
    }
  }
}
