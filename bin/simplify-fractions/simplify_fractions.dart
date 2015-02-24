
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

