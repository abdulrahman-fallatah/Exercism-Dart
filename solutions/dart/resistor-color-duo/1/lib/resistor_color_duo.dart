class ResistorColorDuo {
  List<String> colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
  int value(List<String> input){
    String a = colors.indexOf(input.first).toString();
    String b = colors.indexOf(input[1]).toString();
    return int.parse(a + b);
  }
}