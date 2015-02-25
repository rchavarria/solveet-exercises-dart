
class Fraction {
    int numerator;
    int denominator;

    Fraction(this.numerator, this.denominator);

    Fraction simplify() {
        int factor = _gcd(numerator, denominator);
        numerator = (numerator / factor).toInt();
        denominator = (denominator / factor).toInt();
        return this;
    }

    int _gcd(n, d) {
        while(d != 0) {
            int t = d;
            d = n % t;
            n = t;
        }

        return n;
    }

}

