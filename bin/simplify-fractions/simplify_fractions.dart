
class Fraction {
    int numerator;
    int denominator;

    Fraction(this.numerator, this.denominator);

    void simplify() {
        int factor = gcd();
        numerator = (numerator / factor).toInt();
        denominator = (denominator / factor).toInt();
    }

    int gcd() {
        int n = numerator;
        int d = denominator;
        while(d != 0) {
            int t = d;
            d = n % t;
            n = t;
        }

        return n;
    }

}

