class CollatzConjecture {
   int steps(int input){
    if(input < 1) throw ArgumentError("Only positive integers are allowed");
    int output = 0;    
    for(output; input != 1; output++) input.isEven ? input ~/= 2 : input = input * 3 + 1;
    return output;
  }
}