bool isValid(String input){
  List<String> inputList = input.replaceAll('-', '').split('');
  if (inputList.length != 10) return false;
  List<int> digitsList = [];
  for(var n in inputList){
    if(int.tryParse(n) != null) digitsList.add(int.parse(n));
    else if(inputList.last == 'X') digitsList.add(10);
    else return false;
  }

  int counter = 11;  
  return digitsList.fold(0, (pre, val) {    
    counter--;
    return pre + (val * counter);    
  }) % 11 == 0;  
}