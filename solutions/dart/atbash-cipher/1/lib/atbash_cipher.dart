class AtbashCipher {
  Map<String, String> letters = {
    'a': 'z', 'b': 'y', 'c': 'x', 'd': 'w', 'e': 'v', 'f': 'u', 'g': 't',
    'h': 's', 'i': 'r', 'j': 'q', 'k': 'p', 'l': 'o', 'm': 'n', 'n': 'm',
    'o': 'l', 'p': 'k', 'q': 'j', 'r': 'i', 's': 'h', 't': 'g', 'u': 'f',
    'v': 'e', 'w': 'd', 'x': 'c', 'y': 'b', 'z': 'a',
    '1': '1', '2': '2', '3': '3', '4': '4', '5': '5', '6': '6', '7': '7', '8': '8', '9': '9', '0': '0',
  };

encode(String word){

    List lettersList;
    String cipheredWord = '';

    lettersList = word.toLowerCase().split('').toList();
    lettersList = lettersList.map((e) => e = letters[e] ?? '',).toList();
    lettersList.removeWhere((e) => e == '');
    
    for (var i = 0; i < lettersList.length; i++){
        if (i % 5 == 0 && i != 0){cipheredWord += ' ';}
        cipheredWord = cipheredWord + lettersList[i];
        
    }

    
    print(cipheredWord);
    return cipheredWord;

}

decode(String word){
    
    List lettersList;
    String decipheredWord = '';

    lettersList = word.toLowerCase().split('').toList();
    lettersList.removeWhere((element) => element == ' ',);
    lettersList = lettersList.map((e) => e = letters.entries.firstWhere((entry) => entry.value == e).key).toList();
    for (var i = 0; i < lettersList.length; i++){
      decipheredWord += lettersList[i];
    }

    return decipheredWord;
}
}