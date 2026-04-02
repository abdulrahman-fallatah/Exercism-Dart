class SpaceAge {
    age({String planet = 'Earth', int? seconds}){
        switch(planet){
            case 'Earth':
            return double.parse((seconds! / 31557600).toStringAsFixed(2));
            case 'Mercury':
            return double.parse((seconds! / 31557600 / 0.2408467).toStringAsFixed(2));
            case 'Venus':
            return double.parse((seconds! / 31557600 / 0.61519726).toStringAsFixed(2));
            case 'Mars':
            return double.parse((seconds! / 31557600 / 1.8808158).toStringAsFixed(2));
            case 'Jupiter':
            return double.parse((seconds! / 31557600 / 11.862615).toStringAsFixed(2));
            case 'Saturn':
            return double.parse((seconds! / 31557600 / 29.447498).toStringAsFixed(2));
            case 'Uranus':
            return double.parse((seconds! / 31557600 / 84.016846).toStringAsFixed(2));
            case 'Neptune':
            return double.parse((seconds! / 31557600 / 164.79132).toStringAsFixed(2));
        }
    }
}