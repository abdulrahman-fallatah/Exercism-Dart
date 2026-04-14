class Luhn {
  bool valid(String input){
    input = input.replaceAll(' ', '');
    if(!RegExp(r'^[0-9]{2,}$').hasMatch(input)) return false;
    List<int> inputList = input.split('').reversed.map((e) => int.parse(e)).toList();
    for(int i = 1; i < input.length; i+= 2){
      int sum = inputList[i] * 2;
      if(sum > 9) sum -= 9;
      inputList[i] = sum;
    }
    int result = inputList.fold(0, (pre, val) => pre + val);
    return result % 10 == 0 ? true : false;
  }
}