import './identity_builder.dart';
import './times3_builder.dart';
import './plus5_builder.dart';

class Times3Plus5 {
    List steps;
    IdentityBuilder identity;
    Times3Builder times3;
    Plus5Builder plus5;

    Times3Plus5() {
        steps = [];
        identity = new IdentityBuilder();
        times3 = new Times3Builder(this);
        plus5 = new Plus5Builder(this);
    }

    boolean isBuildable(int n) {
        if (n < 1) {
            return false;
        }

        var builders = [identity, times3, plus5];
        boolean buildable = false;
        builders.forEach((builder) {
            if (!buildable) {
                buildable = builder.isBuildable(n);
            }
        });

        return buildable;
    }

}

