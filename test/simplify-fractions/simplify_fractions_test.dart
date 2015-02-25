import 'package:unittest/unittest.dart';
import '../../bin/simplify-fractions/simplify_fractions.dart';

void main() {

    group('Fraction', () {

        group('#simplify', () {

            test('does not mofidy already simplified members', () {
                var simplified = new Fraction(2, 1).simplify();

                expect(2, equals(simplified.numerator));
                expect(1, equals(simplified.denominator));
            });

            test('reduces members by a common factor', () {
                var simplified = new Fraction(3, 6).simplify();

                expect(1, equals(simplified.numerator));
                expect(2, equals(simplified.denominator));
            });

            test('does not reduce a fraction whose members are primes', () {
                var simplified = new Fraction(13, 47).simplify();

                expect(13, equals(simplified.numerator));
                expect(47, equals(simplified.denominator));
            });

            test('reduces a fraction by several common factors', () {
                var simplified = new Fraction(1848, 990).simplify();

                expect(28, equals(simplified.numerator));
                expect(15, equals(simplified.denominator));
            });

        });

    });

}

