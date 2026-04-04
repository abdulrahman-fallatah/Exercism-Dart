class Anagram {
  List<String> findAnagrams(String keyWord, List<String> candidates){
    List<String> result = [];
    String sorted = (keyWord.toLowerCase().split('')..sort()).join();
    String sorted2;
    for(var candidate in candidates){
      if(candidate.length == keyWord.length && candidate.toLowerCase() != keyWord.toLowerCase()){
        sorted2 = (candidate.toLowerCase().split('')..sort()).join();
        if(sorted == sorted2) result.add(candidate);
      }
    }
    return result;
  }
}