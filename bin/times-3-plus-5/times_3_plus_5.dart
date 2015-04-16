
class Times3Plus5 {

    boolean isBuildable(int n) {
        if (n == 1) {
            return true;
        }

        boolean buildable = false;
        if (isDivisibleBy3(n)) {
            buildable = isBuildable(n / 3);
        }

        if (!buildable && !canNotSubstract5(n)) {
            buildable = isBuildable(n - 5);
        }

        return buildable;
    }

    boolean isDivisibleBy3(int n) {
        return n % 3 == 0;
    }

    boolean canNotSubstract5(int n) {
        return (n - 5) < 1;
    }

}

