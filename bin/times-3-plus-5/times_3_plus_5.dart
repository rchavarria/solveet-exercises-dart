
class Times3Plus5 {
    List steps = [];

    boolean isBuildable(int n) {
        if (n < 1) {
            return false;
        }

        if (n == 1) {
            steps.add('1');
            return true;
        }

        boolean buildable = false;
        if (_isDivisibleBy3(n)) {
            buildable = isBuildable(n / 3);
        }

        if (!buildable && _canSubstract5(n)) {
            buildable = isBuildable(n - 5);
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

