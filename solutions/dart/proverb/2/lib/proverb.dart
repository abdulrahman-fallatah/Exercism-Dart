class Proverb {
  String recite(List<String> input){
    String result = "";
    if(input.isEmpty) return result;      
    for(var i = 1; i < input.length; i++){
     result += "For want of a ${input[i-1]} the ${input[i]} was lost.\n";
    }
    result += "And all for the want of a ${input.first}.";
    return result;
  }
}