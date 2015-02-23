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

        test('is 1 because numerator and denominator are primes and have no factor in common', () {
            expect(1, equals(gcd(3, 11)));
            expect(1, equals(gcd(11, 3)));
        });

    });

}

int gcd(numerator, denominator) {
    while(denominator != 0) {
        int t = denominator;
        denominator = numerator % t;
        numerator = t;
    }

    return numerator;
}

