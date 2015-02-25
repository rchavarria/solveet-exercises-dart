
class Fraction {
    int numerator;
    int denominator;

    Fraction(this.numerator, this.denominator);

    Fraction simplify() {
        int factor = _gcd(numerator, denominator);
        int simplifiedNumerator = (numerator / factor).toInt();
        int simplifiedDenominator = (denominator / factor).toInt();
        return new Fraction(simplifiedNumerator, simplifiedDenominator);
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

