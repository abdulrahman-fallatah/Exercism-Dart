class CollatzConjecture {
   int steps(int input){
    if(input < 1) throw ArgumentError("Only positive integers are allowed");
    int output = 0;    
    while(input != 1){
      if(input.isEven){
        input ~/= 2;
        output++; continue;
      }else{
        input = input * 3 + 1;
        output++; continue;
      }
    }
    return output;
  }
}