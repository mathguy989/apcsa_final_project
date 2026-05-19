class SudokuBoard {
  SudokuSquare[][] board;
  SudokuSquare highlighted;
  
  SudokuBoard() {
    board = new SudokuSquare[9][9];
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 0; j++) {
        board[i][j] = new SudokuSquare(j * SQ_SZ, i * SQ_SZ + TOP_PAD, false);
      }
    }
  }
  
  void drawBoard() {
    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board[0].length; j++) {
        (i/3 + j/3) % 2 == 0 ? color(255) : color(128);
        board[i][j].drawSquare();
      }
    }
  }
  
  void updateHighlight() {
    
  }
}
