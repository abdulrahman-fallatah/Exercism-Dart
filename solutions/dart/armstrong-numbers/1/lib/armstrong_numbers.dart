class ArmstrongNumbers {
  bool isArmstrongNumber(String stringNumber){    
    List<String> numberList = stringNumber.split('');
    BigInt number = BigInt.parse(stringNumber);
    BigInt sum = BigInt.zero;
        

    numberList.forEach((e) {
      BigInt element = BigInt.parse(e);
      sum += element.pow(stringNumber.length);
    });

    return sum == number;   
  }
}