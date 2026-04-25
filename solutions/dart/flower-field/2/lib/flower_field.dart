class FlowerField {
  List<String> input;
  FlowerField(this.input);
  List<String> get annotated{
    List<List<String>> field = input.map((e) => e.split('')).toList();
    for(int row = 0; row < field.length; row++){
      for(int column = 0; column < field[row].length; column++){
        if(field[row][column] == '*') continue;
        int sum = 0;
        for(int i = -1; i < 2; i++){
          for(int j = -1; j < 2; j++){
            if(i == 0 && j == 0) continue;
            var neighborRow = row + i; var neighborColumn = column + j;            
            if(neighborRow >= 0 && neighborRow < field.length){
              if(neighborColumn >= 0 && neighborColumn < field[row].length){
                if(field[neighborRow][neighborColumn] == '*') sum++;
              }             
            }
          }          
        }
        if(sum > 0) field[row][column] = sum.toString();
      }
    }
    return field.map((e) => e.join()).toList();
  }
}