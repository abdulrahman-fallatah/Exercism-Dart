class Raindrops {
    String convert(int input){
        String result = '';
        if(input % 3 == 0) result += 'Pling';        
        if(input % 5 == 0) result += 'Plang';
        if(input % 7 == 0) result += 'Plong';
        if(result == '') return input.toString();
        else return result;
    }
}