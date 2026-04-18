class Pangram {
  bool isPangram(String input) =>
  (input.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '').split('')..sort())
  .toSet().join() == "abcdefghijklmnopqrstuvwxyz";  
}