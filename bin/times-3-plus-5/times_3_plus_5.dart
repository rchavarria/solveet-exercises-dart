import './builder.dart';
import './identity_builder.dart';
import './times3_builder.dart';
import './plus5_builder.dart';

class Times3Plus5 implements Builder {
    List<String> steps;
    List<Builder> builders;

    Times3Plus5() {
        steps = [];
        builders = [
            new IdentityBuilder(),
            new Times3Builder(this),
            new Plus5Builder(this)
        ];
    }

    boolean isBuildable(int n) {
        boolean buildable = false;
        builders.forEach((builder) {
            if (!buildable) {
                buildable = builder.isBuildable(n);
                if (buildable) {
                    steps.add(builder.getStep());
                }
            }
        });

        return buildable;
    }
    
    String getStep() => '';

}

