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

        test('can build a number by multiplying 1 by 3 several times', () {
            expect(true, equals(buildableByMultiplyingBy3(9)));
            expect(true, equals(buildableByMultiplyingBy3(27)));
            expect(true, equals(buildableByMultiplyingBy3(81)));
            expect(true, equals(buildableByMultiplyingBy3(243)));
        });

    });

}

boolean buildableByMultiplyingBy3(int n) {
    if (n == 1) {
        return true;
    }

    int modulus = n % 3;
    boolean buildable = modulus == 0;
    if (buildable == false) {
        return false;
    }

    int divided = (n / 3).toInt();
    return buildableByMultiplyingBy3(divided);
}

