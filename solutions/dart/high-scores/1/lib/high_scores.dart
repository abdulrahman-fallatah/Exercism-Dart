class HighScores {
  List<int> input;

  HighScores(this.input);

  List<int> get scores => input;  

  int latest() => input.last;
  
  int personalBest(){
    List<int> sorted = List.from(input);    
    sorted.sort((a, b) => b.compareTo(a));
    int best = sorted.first;
    return best;
  }

  List<int> personalTopThree(){
    List<int> best3 = List.generate(input.length, (index) => input[index]);
    best3.sort((a, b) => b.compareTo(a));
    best3 = best3.take(3).toList();
    return best3;
  }
}
