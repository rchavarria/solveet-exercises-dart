
class Fraction {
    int numerator;
    int denominator;

    Fraction(this.numerator, this.denominator);

    void simplify() {
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

