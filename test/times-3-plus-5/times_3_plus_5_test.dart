import 'package:unittest/unittest.dart';
import 'package:dartmocks/dartmocks.dart';

import '../../bin/times-3-plus-5/times_3_plus_5.dart';
import '../../bin/times-3-plus-5/identity_builder.dart';
import '../../bin/times-3-plus-5/times3_builder.dart';

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

        test('considers any other number as not buildable', () {
            var builder = new IdentityBuilder();
            expect(builder.isBuildable(2), equals(false));
            expect(builder.isBuildable(3), equals(false));
            expect(builder.isBuildable(6), equals(false));
            expect(builder.isBuildable(21), equals(false));
            expect(builder.isBuildable(1234), equals(false));
        });

    });

    group('Times 3 builder', () {

        test('considers numbers not divisible by 3 as not buildable', () {
            var builder = new Times3Builder(null);
            expect(builder.isBuildable(2), equals(false));
            expect(builder.isBuildable(5), equals(false));
            expect(builder.isBuildable(8), equals(false));
            expect(builder.isBuildable(122), equals(false));
        });

        test('delegates the decision to the delegate if the number is divisible by 3', () {
            var delegateBuilder = stub({'isBuildable': true});
            var builder = new Times3Builder(delegateBuilder);
            expect(builder.isBuildable(3), equals(true));
        });

        test('calls the delegate with the number divided by 3 when is buildable', () {
            var n = 6;
            var delegate = mock()
                            ..shouldReceive('isBuildable').args(n / 3);
            var builder = new Times3Builder(delegate);

            // test
            builder.isBuildable(n);

            delegate.verify();
        });

    });

}

boolean times3plus5(int n) {
    return new Times3Plus5().isBuildable(n);
}

