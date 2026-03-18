int aliveOrDead(sum, isAlive){
  if (sum == 3){
        return 1;
      } else if(sum == 2 && isAlive == 1){
        return 1;
      } else return 0;
}

class GameOfLife {
  List<List<int>> input = [];
  List<List<int>> result = [];
  GameOfLife(this.input);
  tick(){
    result = List.generate(input.length, (index) => List.filled(input[0].length, 0));
    int sum = 0;
    int isAlive = 0;
    
    for(var row = 0; row < input.length; row++){
      for(var column = 0; column < input[row].length; column++){
        sum = 0;
        isAlive = (input[row][column] == 0) ? 0 : 1;
       for(var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){                 
         var neighborRow = row + i; var neighborColumn = column + j;
         if (neighborRow >= 0 && neighborRow < input.length){
          if(neighborColumn >= 0 && neighborColumn < input[row].length){
            if(i != 0 || j != 0){
              sum += input[row + i][column + j];
            }
          }
         }         
        }            
       }
       isAlive = aliveOrDead(sum, isAlive);
       result[row][column] = isAlive;       
      }
    }
        
    return result;
  }

  matrix(){
    print(result);
    return result;
  }
}