class TwelveDays {
  List<String> lyrics = ['and a Partridge in a Pear Tree.', 'two Turtle Doves, ', 'three French Hens, ', 'four Calling Birds, ', 'five Gold Rings, ',
    'six Geese-a-Laying, ', 'seven Swans-a-Swimming, ', 'eight Maids-a-Milking, ', 'nine Ladies Dancing, ', 'ten Lords-a-Leaping, ',
    'eleven Pipers Piping, ', 'twelve Drummers Drumming, '];
  Map<int, String> count = {1: 'first', 2: 'second', 3: 'third', 4: 'fourth', 5: 'fifth', 6: 'sixth', 7: 'seventh',
  8: 'eighth', 9: 'ninth', 10: 'tenth', 11: 'eleventh', 12: 'twelfth'};
  recite(int first, int last){
    StringBuffer result = StringBuffer();
    for(int i = first; i <= last; i++){
      result.write('On the ${count[i]} day of Christmas my true love gave to me: ');
      for(int j = i; j > 0; j--){
        i == 1 ? result.write("a Partridge in a Pear Tree.") : result.write("${lyrics[j-1]}");
      }
      if(i < last) result.write('\n');
    }
    return result.toString();
  }
}