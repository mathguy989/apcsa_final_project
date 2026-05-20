class SudokuBoard {
  SudokuSquare[][] board;
  SudokuSquare selection;
  
  SudokuBoard() {
    board = new SudokuSquare[9][9];
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
        board[i][j] = new SudokuSquare(j * SQ_SZ, i * SQ_SZ + TOP_PAD, false);
      }
    }
  }
  
  void drawBoard() {
    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board[0].length; j++) {
        if ((i/3 + j/3) % 2 == 0) fill(255); 
        else fill(192);
        board[i][j].drawSquare(selection == board[i][j]);
      }
    }
  }
  
  void updateSelection() {
    if (mouseY < TOP_PAD) selection = null;
    else selection = board[(mouseY - TOP_PAD) / SQ_SZ][mouseX / SQ_SZ];
  }
  
  void inputVal(int val) {
    selection.value = val;
  }
  
  boolean hasSelection() {
    return (selection != null);
  }
}
