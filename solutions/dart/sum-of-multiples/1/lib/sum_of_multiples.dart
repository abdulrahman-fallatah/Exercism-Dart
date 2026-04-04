class SumOfMultiples {
  int sum(List<int> magicalItems, int level){
    int energy;
    Set<int> energyPoints = {};

    for(var item in magicalItems){           
      for(int i = 0; i < level; i++){
        energyPoints.add(item * i);        
        if(energyPoints.last < level) continue;
        else energyPoints.remove(energyPoints.last); break;
      }
      
    }
    energy = energyPoints.fold(0, (previousValue, element) => previousValue + element);
    return energy;
  }
}