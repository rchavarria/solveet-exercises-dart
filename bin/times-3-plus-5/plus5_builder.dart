class Plus5Builder {

    var delegate;

    Plus5Builder(this.delegate); 
    
    boolean isBuildable(int n) {
        if (n - 5 >= 1) {
            return this.delegate.isBuildable(n - 5);
        }
        return false;
    }

}
