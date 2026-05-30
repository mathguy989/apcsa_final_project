import java.util.HashSet;
import java.util.Set;

class SudokuBoard {
  SudokuSquare[][] board;
  SudokuSquare selection;
  ArrayList<Integer> solvedList;
  
  SudokuBoard(boolean locked) {
    board = new SudokuSquare[9][9];
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
        board[i][j] = new SudokuSquare(j, i, locked);
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
    else if (board[(mouseY - TOP_PAD) / SQ_SZ][mouseX / SQ_SZ].locked) selection = null;
    else selection = board[(mouseY - TOP_PAD) / SQ_SZ][mouseX / SQ_SZ];
  }
  
  void inputVal(int val) {
    
    selection.value = val;
  }
  
  boolean hasSelection() {
    return (selection != null);
  }
  
  
  boolean boardLegal() {
    
    for (int i = 0; i < board.length; i++) {
      if (!rowLegal(i)) return false;
      if (!colLegal(i)) return false;
      if (!boxLegal(i / 3, i % 3)) return false;
      
    }
    return true;
  }
  boolean rowLegal(int row) {
    ArrayList<Integer> group = new ArrayList<>();
    for (int i = 0; i < board[0].length; i++){
      if (board[row][i].value != 0) group.add(board[row][i].value);
    }
    Set<Integer> s = new HashSet<>();
      for (Integer num : group) {
         if (!s.add(num)) return false;
      }
    return true;
  }
  boolean colLegal(int col) {
    ArrayList<Integer> group = new ArrayList<>();
    for (int i = 0; i < board.length; i++) {
      if (board[i][col].value != 0) group.add(board[i][col].value);
    }
    Set<Integer> s = new HashSet<>();
      for (Integer num : group) {
         if (!s.add(num)) return false;
      }
    return true;
  }
  boolean boxLegal(int boxX, int boxY) {
    ArrayList<Integer> group = new ArrayList<>(); //<>//
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
      int value = board[3 * boxY + j][3 * boxX + i].value;
      if (value != 0) group.add(value);
    }
    }
    Set<Integer> s = new HashSet<>();
      for (Integer num : group) {
         if (!s.add(num)) return false;
      }
    return true;
  }
  
  
  
}
