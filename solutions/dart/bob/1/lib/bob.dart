class Bob {
  String response(String input){
    final allCapital = RegExp(r"^[^a-z]+$");
    final anyLetter = RegExp(r"[a-zA-Z]");
    input = input.trim();  
    if(input == '') return  "Fine. Be that way!";
    else if(allCapital.hasMatch(input) && anyLetter.hasMatch(input) && input.endsWith('?')) return "Calm down, I know what I'm doing!";
    else if(input.endsWith('?')) return "Sure.";
    else if(allCapital.hasMatch(input) && anyLetter.hasMatch(input)) return "Whoa, chill out!";    
    else return "Whatever.";
  }
}