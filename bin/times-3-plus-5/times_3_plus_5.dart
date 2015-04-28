import './times3_builder.dart';
import './plus5_builder.dart';

class Times3Plus5 {
    List steps;
    Times3Builder times3;
    Plus5Builder plus5;

    Times3Plus5() {
        steps = [];
        times3 = new Times3Builder(this);
        plus5 = new Plus5Builder(this);
    }

    boolean isBuildable(int n) {
        if (n < 1) {
            return false;
        }

        if (n == 1) {
            steps.add('1');
            return true;
        }

        boolean buildable = times3.isBuildable(n);
        if (!buildable) {
            buildable = plus5.isBuildable(n);
        }

        return buildable;
    }

    boolean _isDivisibleBy3(int n) {
        return n % 3 == 0;
    }

    boolean _canSubstract5(int n) {
        return (n - 5) >= 1;
    }

}

