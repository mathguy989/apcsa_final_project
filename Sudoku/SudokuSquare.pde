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
}
