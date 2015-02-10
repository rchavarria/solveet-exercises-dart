
class Palindrome {
    int number;
    int maxIterations;
    int currentIteration = 0;

    Palindrome(this.number, this.maxIterations);

    boolean sumIsPalindrome() {
        currentIteration += 1;
        if (currentIteration > maxIterations) {
            return false;
        }

        number = number + reverse(number);
        if (isPalindrome(number)) {
            return true;
        }

        return sumIsPalindrome();
    }

    int reverse(int n) => int.parse(n.toString().split('').reversed.join());

    boolean isPalindrome(int n) => n.toString() == reverse(n).toString();

}

// ejemplos
void main() {
    print('102 cumple la condicion? ${new Palindrome(102, 1).sumIsPalindrome()}');
    print('48 cumple la condicion en una iteracion? ${new Palindrome(48, 1).sumIsPalindrome()}');
    print('48 cumple la condicion en dos iteraciones? ${new Palindrome(48, 2).sumIsPalindrome()}');
    print('187 cumple la condicion en 25 iteraciones? ${new Palindrome(187, 25).sumIsPalindrome()}');
}

