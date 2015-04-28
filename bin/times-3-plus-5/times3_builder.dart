class Times3Builder {

    var delegate;

    Times3Builder(this.delegate); 
    
    boolean isBuildable(int n) {
        if ((n % 3) == 0) {
            return this.delegate.isBuildable(n / 3);
        }
        return false;
    }

}
