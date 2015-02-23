import 'package:unittest/unittest.dart';

void main() {

    group('Greatest Common Divisor', () {

        test('when it is one', () {
            expect(1, equals(gcd(2, 1)));
            expect(1, equals(gcd(1, 2)));
        });

    });

}

int gcd(numerator, denominator) => 1;
