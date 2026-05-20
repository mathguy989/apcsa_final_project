class SudokuSquare {
  int x;
  int y;
  int value;
  boolean locked;
  
  SudokuSquare(int x, int y, int value, boolean locked) {
    this.x = x;
    this.y = y;
    this.value = value;
    this.locked = locked;
  }
  SudokuSquare(int x, int y, boolean locked) {
    this.x = x;
    this.y = y;
    this.locked = locked;
  }
  
  void drawSquare(boolean highlighted) {
    if (highlighted) fill(96);
    stroke(0);
    square(x, y, Sudoku.SQ_SZ);
    fill(0);
    textSize(SQ_SZ / 2);
    
    text(String.valueOf(value), x + SQ_SZ / 2, y + SQ_SZ / 2);
    
  }
}
