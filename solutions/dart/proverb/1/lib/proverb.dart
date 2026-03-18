class Proverb {
  String recite(List<String> input){
    String result = "";
    if(input.isEmpty) return result;
    String lost = " was lost.\n";
    String phrase = "For want of a ";
    String lastPhrase = "And all for the want of a ";    
    for(var i = 1; i < input.length; i++){
     result += "${phrase + input[i-1]} the ${input[i] + lost}";
    }
    result += "${lastPhrase + input.first}.";
    return result;
  }
}