class NthPrime {
  int prime(int n){
    if(n == 0) throw ArgumentError("There is no zeroth prime");
    int count = 0;
    int result = 0;    
    for(int i = 0; count < n; i++){
      if(isPrime(i)) count++;
      result = i;
    } 
    return result;
  }
}

bool isPrime(int n){
  if(n == 0 || n == 1) return false;
  if(n == 2 || n == 3) return true;
  if(n % 2 == 0 || n % 3 == 0) return false;
  for(int i = 5; i * i <= n; i += 6)  {
    if(n % i == 0 || n % (i + 2) == 0) return false;
  }
  return true;
}