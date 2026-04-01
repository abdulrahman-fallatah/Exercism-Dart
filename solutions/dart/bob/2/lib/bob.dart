class Bob {
  String response(String input){    
    input = input.trim();  
    if(input.isEmpty) return  "Fine. Be that way!";
    else if(input.isUpperCase && input.isQuestion) return "Calm down, I know what I'm doing!";
    else if(input.isQuestion) return "Sure.";
    else if(input.isUpperCase) return "Whoa, chill out!";    
    else return "Whatever.";
  }  
}
final allCapital = RegExp(r"^[^a-z]+$");
final anyLetter = RegExp(r"[a-zA-Z]");
extension on String{
  bool get isUpperCase => allCapital.hasMatch(this) && anyLetter.hasMatch(this);
  bool get isQuestion => this.endsWith('?');
}