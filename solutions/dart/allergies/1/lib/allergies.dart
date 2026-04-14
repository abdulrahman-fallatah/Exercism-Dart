class Allergies {  
  Map<String, int> allergiesScore = {'eggs': 1, 'peanuts': 2, 'shellfish': 4, 'strawberries': 8, 'tomatoes': 16,
  'chocolate': 32, 'pollen': 64, 'cats': 128, '': 256, ' ': 512};
 bool allergicTo(String item, int score){
  return list(score).contains(item) ? true : false;
 }

 List<String> list(int score){
  List<String> result = [];  
  for(int i = allergiesScore.length-1; score > 0; i--){
    if(allergiesScore.values.elementAt(i) <= score){
      result.add(allergiesScore.keys.elementAt(i));
      score -= allergiesScore.values.elementAt(i);      
    }
  }
  result.remove('');
  return result.reversed.toList();
 }
}