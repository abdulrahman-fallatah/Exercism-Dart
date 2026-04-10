class BottleSong {
  List<String> lyrics = [" green bottles hanging on the wall", " green bottle hanging on the wall", "And if one green bottle should accidentally fall,"];
  Map<int, String> numbers = {1: 'One', 2: 'Two', 3: 'Three', 4: 'Four', 5: 'Five', 6: 'Six', 7: 'Seven', 8: 'Eight',
  9: 'Nine', 10: 'Ten'};
  recite(int first, int last){
    if(last > first) throw ArgumentError("First number must be bigger than last number");
    List<String> song = [];
    for(int i = 0; i < last; i++){
      for(int j = first-i; j >= first-i; j--){        
        for(int n = 0; n < 2; n++) song.add("${numbers[j]}${numbers[j] != 'One' ? lyrics.first : lyrics[1]},");
        song.addAll([lyrics.last, "There\'ll be ${numbers[j-1] == null ? 'no' : numbers[j-1]!.toLowerCase()}${numbers[j-1] != 'One' ? lyrics.first : lyrics[1]}."]);
      }
      if(i + 1 != last) song.add('');
    }
    return song;
  }
}