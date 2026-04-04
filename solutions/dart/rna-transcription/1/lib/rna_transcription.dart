class RnaTranscription {
  Map<String, String> DnaToRna = {'A': 'U', 'T': 'A', 'C': 'G', 'G': 'C'};
  String toRna(String dna){
    return dna.split('').map((e) => e = DnaToRna[e]!).join();
  }
}