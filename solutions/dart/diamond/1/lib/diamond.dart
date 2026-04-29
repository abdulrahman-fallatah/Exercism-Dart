class Diamond {
  List<String> letters = "abcdefghijklmnopqrstuvwxyz".toUpperCase().split('').toList();
  
  List<String> rows(String input){

    List<String> result = [];

    for(int i = 0; i < letters.indexOf(input) + 1; i++){
      String outerSpaces = ' ' * (letters.indexOf(input) - i);
      if(i == 0){
        result.add("${outerSpaces + letters[i] + outerSpaces}");
        continue;
      }else{
        String innerSpaces = ' ' * (i * 2 - 1);
        result.add("${outerSpaces + letters[i] + innerSpaces + letters[i] + outerSpaces}");
      }
    }

    for(int i = result.length - 1; i > 0; i--) result.add(result[i - 1]);

    return result;    
  }
}