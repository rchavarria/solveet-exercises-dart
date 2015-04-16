
class Times3Plus5 {

    boolean isBuildable(int n) {
        if (n == 1) {
            return true;
        }

        boolean buildable = false;
        if (isDivisibleBy3(n)) {
            buildable = isBuildable(n / 3);
        }

        return buildable;
    }

    boolean isDivisibleBy3(int n) {
        return n % 3 == 0;
    }

}

