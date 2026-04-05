enum Classification{perfect, abundant, deficient}

class PerfectNumbers {
  classify(int number){
    if(number < 1) throw ArgumentError();
    int sumOfFactors;
    List<int> factors = [];
    for(int i = 1; i <= number ~/ 2; i++){
      if(number % i == 0) factors.add(i);
    }    
    sumOfFactors = factors.fold(0, (pre, e) => pre + e);    
    if(sumOfFactors == number) return Classification.perfect;
    else if(sumOfFactors > number) return Classification.abundant;
    else return Classification.deficient;
  }
}