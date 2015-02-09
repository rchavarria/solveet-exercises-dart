
class Palindrome {
    int number;
    int maxIterations;
    int currentIteration = 0;

    Palindrome(this.number, this.maxIterations);

    boolean sumIsPalindromeRecursively() {
        currentIteration += 1;
        if (currentIteration > maxIterations) {
            return false;
        }

        number = number + reverse(number);
        if (isPalindrome(number)) {
            return true;
        }

        return sumIsPalindromeRecursively();
    }

    int reverse(int n) => int.parse(n.toString().split('').reversed.join());

    boolean isPalindrome(int n) => n.toString() == reverse(n).toString();

}

