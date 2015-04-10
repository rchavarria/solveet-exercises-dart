import 'package:unittest/unittest.dart';

void main() {

    group('Times 3 - Plus 5', () {

        test('can not build a number by multiplying 1 by 3 only once', () {
            expect(buildableByMultiplyingBy3(4), false);
            expect(buildableByMultiplyingBy3(6), false);
            expect(buildableByMultiplyingBy3(10), false);
        });

        test('can build a number by multiplying 1 by 3 only once', () {
            expect(buildableByMultiplyingBy3(3), true);
        });

        test('can not build a number by multiplying 1 by 3 several times', () {
            expect(buildableByMultiplyingBy3(10), false);
            expect(buildableByMultiplyingBy3(15), false);
            expect(buildableByMultiplyingBy3(49), false);
        });

        test('can build a number by multiplying 1 by 3 several times', () {
            expect(buildableByMultiplyingBy3(9), true);
            expect(buildableByMultiplyingBy3(27), true);
            expect(buildableByMultiplyingBy3(81), true);
            expect(buildableByMultiplyingBy3(243), true);
        });

    });

}

boolean buildableByMultiplyingBy3(int n) {
    if (n == 1) {
        return true;
    }

    if (n % 3 != 0) {
        return false;
    }

    // TODO inline divided
    int divided = (n / 3).toInt();
    return buildableByMultiplyingBy3(divided);
}

