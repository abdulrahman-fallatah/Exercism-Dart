class EggCounter {
  count(int number){
    String normal = number.toRadixString(2);
    int binaryNumber = 0;
    for (var i = 0; i < normal.length; i++){
      binaryNumber += int.parse(normal[i]);
    }
    
    return binaryNumber;
  }
}