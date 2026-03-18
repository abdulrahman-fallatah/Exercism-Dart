class Proverb {
  String recite(List<String> input){
    if(input.isEmpty) return '';
    final result = StringBuffer();          
    for(var i = 1; i < input.length; i++){
     result.write("For want of a ${input[i-1]} the ${input[i]} was lost.\n");
    }
    result.write("And all for the want of a ${input.first}.");
    return result.toString();
  }
}