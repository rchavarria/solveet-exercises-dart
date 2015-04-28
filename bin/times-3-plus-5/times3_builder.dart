class Times3Builder {

    var delegate;

    Times3Builder(this.delegate); 
    
    boolean isBuildable(int n) {
        if (_isDivisible(n)) {
            return this.delegate.isBuildable(n / 3);
        }
        return false;
    }

    boolean _isDivisible(n) {
        return n % 3 == 0;
    }

}
