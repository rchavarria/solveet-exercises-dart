import './builder.dart';

class IdentityBuilder implements Builder {
    
    boolean isBuildable(int n) {
        return n == 1;
    }

    String getStep() => '1';

}
