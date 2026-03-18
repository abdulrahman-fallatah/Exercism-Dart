class Leap {
  bool leapYear(int year){
    if (year % 100 == 0){
      if (year % 400 == 0){
        return true;
      } else{
        return false;
      }
    }else if (year % 4 == 0){
      return true;
    }else{
      return false;
    }
  }
}

void main(){
  var leap = Leap();
  print(leap.leapYear(1997));
  print(leap.leapYear(1900));
  print(leap.leapYear(2000));
}