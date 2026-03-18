List<String> phrases = ["the house that Jack built.", "the malt that lay in", "the rat that ate", "the cat that killed",
"the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked", "the man all tattered and torn that kissed",
"the priest all shaven and shorn that married", "the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept",
"the horse and the hound and the horn that belonged to"];


class House {
  recite(int startVerse, int endVerse){
    String result = "";
    List<String> resultList = [];
    for(var i = startVerse; i <= endVerse; i++){
      result = "This is";
      for(var j = i; j >= 1; j--){
      result += " ${phrases[j-1]}";
      }
      resultList.add(result);
    }    
    return resultList.join('\n');
  }  
}