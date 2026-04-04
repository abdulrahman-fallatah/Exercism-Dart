class Anagram {
  List<String> findAnagrams(String keyWord, List<String> candidates){
    List<String> result = [];
    List temp = keyWord.toLowerCase().split('');
    temp.sort();
    String sorted = temp.join();
    for(var candidate in candidates){
      if(candidate.length == keyWord.length && candidate.toLowerCase() != keyWord.toLowerCase()){
        List temp2 = candidate.toLowerCase().split('');        
        temp2.sort();
        String sorted2 = temp2.join();
        if(sorted == sorted2) result.add(candidate);
      }
    }
    return result;
  }
}