class PhoneNumber {
  dynamic clean(String input){
    if(input.contains(RegExp(r'[a-zA-z]'))) throw FormatException("letters not permitted");
    if(input.contains(RegExp(r'(?![()\-.])\p{P}', unicode: true))) throw FormatException("punctuations not permitted");
    input = input.replaceAll((RegExp(r'\D+')), '');
    if(input.length > 11) throw FormatException("must not be greater than 11 digits");    
    if(input.length == 11 && input[0] != '1') throw FormatException("11 digits must start with 1");
    if(input.length == 11) input = input.replaceFirst('1', '');
    if(input.length < 10) throw FormatException("must not be fewer than 10 digits");
    if(input[0] == '0') throw FormatException("area code cannot start with zero");
    if(input[0] == '1') throw FormatException("area code cannot start with one");
    if(input[3] == '0') throw FormatException("exchange code cannot start with zero");
    if(input[3] == '1') throw FormatException("exchange code cannot start with one");
    return input;
  }
}