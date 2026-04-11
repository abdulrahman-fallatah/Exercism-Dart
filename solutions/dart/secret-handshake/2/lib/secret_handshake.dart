class SecretHandshake {
  List<String> commands(int input){
    List<String> binary = input.toRadixString(2).split('').reversed.toList();    
    List<String> result = [];    
      if(binary[0] == '1') result.add('wink');
      if(binary.length > 1 && binary[1] == '1') result.add('double blink');
      if(binary.length > 2 && binary[2] == '1') result.add('close your eyes');
      if(binary.length > 3 && binary[3] == '1') result.add('jump');
      if(binary.length > 4 && binary[4] == '1') result = result.reversed.toList();    
    return result;
  }
}