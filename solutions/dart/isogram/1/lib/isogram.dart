class Isogram {
  bool isIsogram(String word){
    bool result = true;
    int repeat;
    word = word.replaceAll(RegExp(r'[^a-zA-Z]'), '');
    for(int i = 0; i < word.length; i++){
      repeat = 0;
      for(int j = 0; j < word.length; j++){
        if(word[i].toLowerCase() == word[j].toLowerCase()) repeat += 1;
      }
      if(repeat > 1) result = false;
    }
    return result;
  }
}