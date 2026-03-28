enum Classification {equal, unequal, superlist, sublist}

class Sublist {
  sublist(List listOne, List listTwo){    
    List temp;
    int check = 0;

    if(listOne.length == listTwo.length){
      check = isEqual(check, listOne, listTwo);
        if (check == listOne.length){
          return Classification.equal;
        } else  return Classification.unequal;
    }
    else if(listOne.length > listTwo.length){
      for(var i = 0; i < listOne.length - listTwo.length + 1; i++){
        temp = List.generate(listTwo.length, (index) => listOne[i+index]);
        if(isEqual(check, temp, listTwo) == temp.length) return Classification.superlist;
      }
      return Classification.unequal;
    }
    else if(listOne.length < listTwo.length){
      for(var i = 0; i < listTwo.length - listOne.length + 1; i++){
        temp = List.generate(listOne.length, (index) => listTwo[i+index]);                
        check = isEqual(check, temp, listOne);
        if(check == temp.length) return Classification.sublist;        
      }
      return Classification.unequal;
    }
    else return Classification.unequal;
  }

  int isEqual(int check, List<dynamic> listOne, List<dynamic> listTwo) {
    check = 0;
    for(var i = 0; i < listOne.length; i++){          
        if(listOne[i] == listTwo[i]) check++;
      }
    return check;
  }
}