class Acronym {
  String abbreviate(String input){
    List<String> inputList = input.replaceAll(RegExp(r"[^a-zA-Z\' ]"), ' ').split(' ').toList()
    ..removeWhere((e) => e == '');    
    return inputList.map((e) => e[0].toUpperCase()).join();
  }
}