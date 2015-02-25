import 'package:unittest/unittest.dart';
import '../../bin/simplify-fractions/simplify_fractions.dart';

void main() {

    group('Fraction', () {

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

