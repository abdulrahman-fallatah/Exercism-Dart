class Darts {
  int score(double x, double y){
    if(x*x + y*y <= 1*1) return 10;
    else if(x*x + y*y <= 5*5) return 5;
    else if(x*x + y*y <= 10*10) return 1;
    else return 0;
  }
}