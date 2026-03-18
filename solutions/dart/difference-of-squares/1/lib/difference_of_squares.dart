import 'dart:math';

class DifferenceOfSquares {    
    int squareOfSum(int input){
        int output = 0;
        int sum = 0;
        for(var i = input; i > 0; i--){
            sum += i;
        }
        output = pow(sum, 2).toInt();
        return output;
    }

    int sumOfSquares(int input){
        int output = 0;             
        for(var i = input; i > 0; i--){
            output += pow(i, 2).toInt();            
        }
        return output;
    }

    int differenceOfSquares(int input){
       return squareOfSum(input) - sumOfSquares(input);
    }
}
