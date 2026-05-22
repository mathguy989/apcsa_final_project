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
    textAlign(CENTER, CENTER);
    text(value != 0 ? String.valueOf(value) : "", x, y, SQ_SZ, SQ_SZ);
    
  }
}
