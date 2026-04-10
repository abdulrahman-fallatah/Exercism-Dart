class ResistorColorTrio{
  List<String> colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];  
  String label(List<String> input){
    String a = colors.indexOf(input.first).toString();        
    String b = colors.indexOf(input[1]).toString();
    String c = List.filled(colors.indexOf(input[2]), 0).join();
    String result = a + b + c;
    int zeros = 0;
    String ohms = '';
    for(int i = 0; i < result.length; i++){
      if(result[i] == '0') zeros++;      
    }    
    if(zeros >= 3 && zeros < 6){
      ohms = ' kiloohms';
      result = result.replaceAll('000', '');
    }else if(zeros >= 6 && zeros < 9){
      ohms = ' megaohms';
      result = result.replaceAll('000000', '');
    }else if(zeros == 9){
      ohms = ' gigaohms';
      result = result.replaceAll('000000000', '');
    }else ohms = ' ohms';
    if(result.startsWith('0')) result = result.replaceFirst('0', '');
    return result + ohms;
  }
}