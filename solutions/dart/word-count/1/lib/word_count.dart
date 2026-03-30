class WordCount {
    countWords(String input){
        Map<String, int> result = {};
        final splitter = RegExp(r"\w+('\w+)?");                
        final words = splitter.allMatches(input.toLowerCase());
        for(var match in words){
            String word = match.group(0)!;
            result[word] = (result[word] ?? 0) + 1;
        }        
        return result;
    }
}