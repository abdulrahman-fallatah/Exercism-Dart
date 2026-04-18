class PrimeFactors {
  List<int> factors(int number){
    List<int> factors = [];
    for(int i = 2; number > 1;){
      if(number % i == 0){
        number ~/= i;
        factors.add(i);
      }else i++;
    }
    return factors;
  }
}