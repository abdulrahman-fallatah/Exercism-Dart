class Triangle {
  bool equilateral(double a, double b, double c){
    if(a <= 0 || b <= 0 || c <= 0) return false;
    if(a + b < c || b + c < a || c + a < b) return false;
    return a == b && b == c;
  }

  bool isosceles(double a, double b, double c){
    if(a <= 0 || b <= 0 || c <= 0) return false;
    if(a + b < c || b + c < a || c + a < b) return false;
    return a == b || b == c || c == a;
  }

  bool scalene(double a, double b, double c){
    if(a <= 0 || b <= 0 || c <= 0) return false;
    if(a + b < c || b + c < a || c + a < b) return false;
    return a != b && b != c && c != a;
  }
}