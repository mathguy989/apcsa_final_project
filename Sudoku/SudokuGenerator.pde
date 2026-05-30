import java.util.*;

static class SudokuGenerator {
  
  //SudokuBoard fullBoard() {
  //  SudokuBoard board = new SudokuBoard(true);
  //  Random rand = new Random();
    
  //}
  
  static boolean fillCells(SudokuBoard board) {
    ArrayList<Integer> possible;
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {  
        if (board.board[i][j].value == 0) {
          possible = new ArrayList<Integer>();
          Set<Integer> s = new HashSet<>();
          for (int m = 0; m < 9; m++) {
            s.add(board.board[i][m].value);
            s.add(board.board[m][j].value);
          }
          for (int n = 0; n < 3; n++) {
            for (int o = 0; o < 3; o++) {
              s.add(board.board[i / 3 + n][o / 3 + o].value);
            }
          }
          
         for (int p = 1; p < 10; p++) {
           if (s.add(p)) possible.add(p);
         }
         Collections.shuffle(possible);
         while (possible.size() != 0) {
           board.board[i][j].value = possible.remove(0);
           if (!fillCells(board)) board.board[i][j].value = 0;
           else return true;
         }
        }
      }
    }
    return true;
  }
}
  
