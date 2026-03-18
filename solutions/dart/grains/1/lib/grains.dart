BigInt square(final int n) {
  if(n < 1 || n > 64){
    throw ArgumentError("square must be between 1 and 64");
  }

  BigInt result = BigInt.from(1);      
  for(var i = 0; i < n; i++){
    result *= BigInt.from(2);   
  }
  result ~/= BigInt.from(2);  
  return result;
}

BigInt total() {
  BigInt total = BigInt.from(0);
  for(var i = 1; i < 65; i++){    
    total += square(i);
  }
  return total;
}