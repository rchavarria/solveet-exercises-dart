
class Fraction {
    int numerator;
    int denominator;

    Fraction(this.numerator, this.denominator);

    void simplify() {
        int factor = gcd();
        print('factor: ${factor}, n: ${numerator}, d: ${denominator}');
        numerator = (numerator / factor).toInt();
        denominator = (denominator / factor).toInt();
        print('factor: ${factor}, n: ${numerator}, d: ${denominator}');
    }

    int gcd() {
        while(denominator != 0) {
            int t = denominator;
            denominator = numerator % t;
            numerator = t;
        }

        return numerator;
    }

}

