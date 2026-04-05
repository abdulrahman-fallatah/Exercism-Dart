class PascalsTriangle {
  List<List<int>> rows(int rowNumber){
    List<List<int>> result = List.generate(rowNumber, (index) => List.generate(index+1, (i) =>  1));    
    for(int row = 0; row < rowNumber; row++){
      for(int column = 0; column < row; column++){
        if(column != 0 && column != result[row].length-1){
          result[row][column] = result[row-1][column-1] + result[row-1][column];
        }        
      }
    }
    return result;
  }
}