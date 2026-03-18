class InvalidNucleotideException implements Exception{
    String toString() => "InvalidNucleotideException";
}

class NucleotideCount {
  Map<String, int> count(String input){
    Map<String, int> result = {'A': 0, 'C': 0, 'G': 0, 'T': 0};
    for(var char in input.split('')){
        if(!result.containsKey(char)){            
            throw InvalidNucleotideException();                      
        }else{
            result[char] = result[char]! + 1;
        }
    }
    return result;
  }
}