class ResistorColor {
  Map<String, int> _colors = {'black': 0, 'brown': 1, 'red': 2, 'orange': 3, 'yellow': 4, 'green': 5, 'blue': 6,
  'violet': 7, 'grey': 8, 'white': 9};
  
  get colors => _colors.keys.toList();

  int colorCode(String color){
    return _colors[color]!;
  }
}