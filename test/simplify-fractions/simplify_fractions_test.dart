import 'package:unittest/unittest.dart';
import '../../bin/simplify-fractions/simplify_fractions.dart';

void main() {

    group('Fraction', () {

        group('#gcd', () {

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

        group('#simplify', () {

            test('does not mofidy already simplified members', () {
                var fraction = new Fraction(2, 1);
                fraction.simplify();

                expect(2, equals(fraction.numerator));
                expect(1, equals(fraction.denominator));
            });

            test('reduces members by a common factor', () {
                var fraction = new Fraction(3, 6);
                fraction.simplify();

                expect(1, equals(fraction.numerator));
                expect(2, equals(fraction.denominator));
            });

            test('does not reduce a fraction whose members are primes', () {
                var fraction = new Fraction(13, 47);
                fraction.simplify();

                expect(13, equals(fraction.numerator));
                expect(47, equals(fraction.denominator));
            });

            test('reduces a fraction by several common factors', () {
                var fraction = new Fraction(1848, 990); // common factor 2 * 3 * 11 = 66
                fraction.simplify();

                expect(28, equals(fraction.numerator));
                expect(15, equals(fraction.denominator));
            });

        });

    });

}

void expectGCD(n, d, expected) {
    int gcd = new Fraction(n, d).gcd();
    expect(expected, equals(gcd));
}

