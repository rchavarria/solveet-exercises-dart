import 'package:unittest/unittest.dart';

void main() {

    group('Greatest Common Divisor', () {

        test('is 1', () {
            expectGCD(2, 1, 1);
            expectGCD(1, 2, 1);
        });

        test('is the numerator or denominator because they are multiples', () {
            expectGCD(4, 2, 2);
            expectGCD(2, 4, 2);
        });

        test('is 1 because numerator and denominator are primes', () {
            expectGCD(3, 11, 1);
            expectGCD(11, 3, 1);
        });

        test('is a combination of common factors between numerator and denominator', () {
            expectGCD(12, 42, 6);
            expectGCD(42, 12, 6);
        });

    });

    group('Fraction', () {

        test('members can not be simplified', () {
            var fraction = new Fraction(2, 1);
            fraction.simplify();

            expect(2, equals(fraction.numerator));
            expect(1, equals(fraction.denominator));
        });

    });

}

void expectGCD(n, d, expected) {
    int gcd = new Fraction(n, d).gcd();
    expect(expected, equals(gcd));
}

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

