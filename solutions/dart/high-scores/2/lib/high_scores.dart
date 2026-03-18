class HighScores {
  List<int> input;

  HighScores(this.input);

  List<int> get scores => input;  

  int  latest() => input.last;
  
  int  personalBest() => personalTopThree().first;   

  List<int> personalTopThree(){
    List<int> best3 = [...input];
    best3.sort((a, b) => b.compareTo(a));
    best3 = best3.take(3).toList();
    return best3;
  }
}