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

        test('can not build a number by adding 5 to 1 only once', () {
            expect(buildableByAdding5(5), equals(false));
            expect(buildableByAdding5(7), equals(false));
        });

        test('can build a number by adding 5 to 1 only once', () {
            expect(buildableByAdding5(6), equals(true));
        });

        test('can not build a number by adding 5 to 1 several times', () {
            expect(buildableByAdding5(12), equals(false));
            expect(buildableByAdding5(15), equals(false));
            expect(buildableByAdding5(237), equals(false));
        });

        test('can build a number by adding 5 to 1 several times', () {
            expect(buildableByAdding5(11), equals(true));
            expect(buildableByAdding5(21), equals(true));
            expect(buildableByAdding5(111), equals(true));
        });

        group('#times3plus5', () {

            test('can not build a number by multiplying by 3 once', () {
                expect(times3plus5(4), equals(false));
            });
            
            test('can build a number by multiplying by 3 once', () {
                expect(times3plus5(3), equals(true));
            });
            
            test('can not build a number by adding 5 to 1', () {
                expect(times3plus5(7), equals(false));
            });
            
            test('can build a number by adding 5 to 1, but not by multiplying 1 by 3', () {
                expect(times3plus5(6), equals(true));
            });
            
            test('can build a number first by adding 5 to 1, then multiplying by 3', () {
                expect(times3plus5(18), equals(true));
            });
            
            test('can build a number first by multiplying 1 by 3, them adding 5', () {
                expect(times3plus5(8), equals(true));
            });
            
        });

    });

}

boolean buildableByMultiplyingBy3(int n) {
    if (n == 1) {
        return true;
    }

    if (isNotDivisibleBy3(n)) {
        return false;
    }

    return buildableByMultiplyingBy3(n / 3);
}

boolean isNotDivisibleBy3(int n) {
    return n % 3 != 0;
}

boolean buildableByAdding5(int n) {
    if (n == 1) {
        return true;
    }

    if (canNotSubstract5(n)) {
        return false;
    }

    return buildableByAdding5(n - 5);
}

boolean canNotSubstract5(int n) {
    return (n - 5) < 1;
}

boolean times3plus5(int n) {
    if (n == 1) {
        return true;
    }

    boolean buildable = false;
    if (!isNotDivisibleBy3(n)) {
        buildable = times3plus5(n / 3);
    }

    if (!canNotSubstract5(n)) {
        buildable = times3plus5(n - 5);
    }

    return buildable;
}

