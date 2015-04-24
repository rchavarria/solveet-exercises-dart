import 'package:unittest/unittest.dart';
import '../../bin/times-3-plus-5/times_3_plus_5.dart';
import '../../bin/times-3-plus-5/identity_builder.dart';

void main() {

    group('Times 3 - Plus 5', () {

        test('can not build zero', () {
            expect(times3plus5(0), equals(false));
        });

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
        
        test('can build a number first by multiplying 1 by 3, then adding 5', () {
            expect(times3plus5(8), equals(true));
        });
        
        test('examples of numbers that can not be built combining 3 and 5', () {
            expect(times3plus5(2), equals(false));
            expect(times3plus5(4), equals(false));
            expect(times3plus5(5), equals(false));
            expect(times3plus5(7), equals(false));
            expect(times3plus5(10), equals(false));
            expect(times3plus5(12), equals(false));
            expect(times3plus5(15), equals(false));
            expect(times3plus5(17), equals(false));
            expect(times3plus5(20), equals(false));
        });
        
        test('examples of numbers that can be built combining 3 and 5', () {
            expect(times3plus5(13), equals(true));
            expect(times3plus5(14), equals(true));
            expect(times3plus5(19), equals(true));
            expect(times3plus5(23), equals(true));
            expect(times3plus5(24), equals(true));
            expect(times3plus5(33), equals(true));
            expect(times3plus5(54), equals(true));
        });
            
    });

    group('Identity builder', () {

        test('considers number 1 as buildable', () {
            var builder = new IdentityBuilder();
            expect(builder.isBuildable(1), equals(true));
        });

    });

}

boolean times3plus5(int n) {
    return new Times3Plus5().isBuildable(n);
}

