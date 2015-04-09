import 'package:unittest/unittest.dart';

void main() {

    group('Times 3 - Plus 5', () {

        test('can not build a number by multiplying 1 by 3 only once', () {
            expect(false, equals(buildableByMultiplyingBy3(4)));
            expect(false, equals(buildableByMultiplyingBy3(6)));
            expect(false, equals(buildableByMultiplyingBy3(10)));
        });

        test('can build a number by multiplying 1 by 3 only once', () {
            expect(true, equals(buildableByMultiplyingBy3(3)));
        });

        test('can not build a number by multiplying 1 by 3 several times', () {
            expect(false, equals(buildableByMultiplyingBy3(10)));
            expect(false, equals(buildableByMultiplyingBy3(15)));
            expect(false, equals(buildableByMultiplyingBy3(49)));
        });

    });

}

boolean buildableByMultiplyingBy3(int n) {
    int divided = (n / 3).toInt();
    int modulus = n % 3;
    return divided == 1 && modulus == 0;
}

