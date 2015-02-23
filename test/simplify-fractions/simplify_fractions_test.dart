import 'package:unittest/unittest.dart';

void main() {

    group('Greatest Common Divisor', () {

        test('is 1', () {
            expect(1, equals(gcd(2, 1)));
            expect(1, equals(gcd(1, 2)));
        });

        test('is the numerator or denominator because they are multiples', () {
            expect(2, equals(gcd(4, 2)));
            expect(2, equals(gcd(2, 4)));
        });

        test('is 1 because numerator and denominator are primes', () {
            expect(1, equals(gcd(3, 11)));
            expect(1, equals(gcd(11, 3)));
        });

        test('is a combination of common factors between numerator and denominator', () {
            expect(6, equals(gcd(12, 42)));
            expect(6, equals(gcd(42, 12)));
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

int gcd(n, d) => new Fraction(n, d).gcd();

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

