import 'package:unittest/unittest.dart';

void main() {

    group('Times 3 - Plus 5', () {

        test('can not build a number by multiplying it by 3 only once', () {
            expect(false, equals(buildableByMultiplyingBy3(4)));
            expect(false, equals(buildableByMultiplyingBy3(6)));
            expect(false, equals(buildableByMultiplyingBy3(10)));
        });

    });

}

boolean buildableByMultiplyingBy3(n) {
    return false;
}

