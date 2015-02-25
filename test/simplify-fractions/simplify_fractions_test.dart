import 'package:unittest/unittest.dart';
import '../../bin/simplify-fractions/simplify_fractions.dart';

void main() {

    group('Fraction', () {

        group('#simplify', () {

            test('does not mofidy already simplified members', () {
                var fraction = new Fraction(2, 1);
                var simplified = fraction.simplify();

                expect(2, equals(simplified.numerator));
                expect(1, equals(simplified.denominator));
            });

            test('reduces members by a common factor', () {
                var fraction = new Fraction(3, 6);
                var simplified = fraction.simplify();

                expect(1, equals(simplified.numerator));
                expect(2, equals(simplified.denominator));
            });

            test('does not reduce a fraction whose members are primes', () {
                var fraction = new Fraction(13, 47);
                var simplified = fraction.simplify();

                expect(13, equals(simplified.numerator));
                expect(47, equals(simplified.denominator));
            });

            test('reduces a fraction by several common factors', () {
                var fraction = new Fraction(1848, 990); // common factor 2 * 3 * 11 = 66
                var simplified = fraction.simplify();

                expect(28, equals(simplified.numerator));
                expect(15, equals(simplified.denominator));
            });

        });

    });

}

