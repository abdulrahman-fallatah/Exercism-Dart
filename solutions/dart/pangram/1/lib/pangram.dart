class Pangram {
  bool isPangram(String input){
    String alphabet = "abcdefghijklmnopqrstuvwxyz";
    String result = (input.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '').split('')..sort()).toSet().join();
    print(result);
    return result == alphabet;
  }
}