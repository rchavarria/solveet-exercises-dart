import './builder.dart';

class Times3Builder implements Builder {

    var delegate;

    Times3Builder(this.delegate); 
    
    boolean isBuildable(int n) {
        if (n == 0) {
            return false;
        }

        if (_isNotDivisible(n)) {
            return false;
        }

        return this.delegate.isBuildable(n / 3);
    }

    boolean _isNotDivisible(n) {
        return n % 3 != 0;
    }

    String getStep() => '*3';

}
