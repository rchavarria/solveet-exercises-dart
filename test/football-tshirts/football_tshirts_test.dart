import 'dart:math';
import 'package:unittest/unittest.dart';

void main() {

    group('Football t-shirts:', () {

        test('Iterative', () {
            for(int x = 1; x < 100; x++) {
                for(int y = 1; y < 100; y++) {
                    int z = pow(x + y, 2);
                    if (formatAsTshirtNumber(x) + formatAsTshirtNumber(y) == formatAsTshirtNumber(z)) {
                        print('x: ${x}, y: ${y} => z: ${z}');
                    }
                }
            }
        });

    });

}

String formatAsTshirtNumber(int n) => n.toString().padLeft(2, '0');
