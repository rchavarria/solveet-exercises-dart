
class Times3Plus5 {

    boolean isBuildable(int n) {
        if (n == 1) {
            return true;
        }

        boolean buildable = false;
        if (!isNotDivisibleBy3(n)) {
            buildable = isBuildable(n / 3);
        }

        return buildable;
    }

    boolean isNotDivisibleBy3(int n) {
        return n % 3 != 0;
    }

}

