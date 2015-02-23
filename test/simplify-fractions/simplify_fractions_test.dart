import 'package:unittest/unittest.dart';

void main() {

    group('Greatest Common Divisor', () {

        test('when it is one', () {
            expect(1, equals(gcd(2, 1)));
            expect(1, equals(gcd(1, 2)));
        });

        test('numerator and denominator are multiples', () {
            expect(2, equals(gcd(4, 2)));
            expect(2, equals(gcd(2, 4)));
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

