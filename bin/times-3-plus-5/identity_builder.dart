import './builder.dart';

class IdentityBuilder implements Builder {
    boolean isBuildable(int n) => n == 1;
    String getStep() => '1';
}
