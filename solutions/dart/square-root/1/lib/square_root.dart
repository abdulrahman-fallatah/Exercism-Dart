class SquareRoot {
    squareRoot(int input){
        for (int i = 1; i <= input; i++) if(i * i == input) return i;
        throw ArgumentError("The number $input has no square root in whole numbers.");
    }
}