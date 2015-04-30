import './builder.dart';

class Plus5Builder implements Builder {

    var delegate;

    Plus5Builder(this.delegate); 
    
    boolean isBuildable(int n) {
        if (_isSubstractable(n)) {
            return this.delegate.isBuildable(n - 5);
        }
        return false;
    }

    boolean _isSubstractable(n) {
        return n - 5 >= 1;
    }

}
