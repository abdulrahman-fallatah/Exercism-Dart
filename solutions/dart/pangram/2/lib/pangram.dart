class Pangram {
  bool isPangram(String input){    
    String sorted = (input.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '').split('')..sort()).toSet().join();    
    return sorted == "abcdefghijklmnopqrstuvwxyz";
  }
}