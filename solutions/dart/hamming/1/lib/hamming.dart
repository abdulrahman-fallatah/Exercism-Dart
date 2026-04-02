class Hamming {
  int distance(String input1, String input2){
    var result = 0;    
    if(input1.length != input2.length) throw ArgumentError("strands must be of equal length");
    for(var i = 0; i < input1.length; i++){
      if(input1[i] != input2[i]) result++;
    }
    return result;
  }
}