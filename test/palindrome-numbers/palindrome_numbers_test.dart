import 'package:unittest/unittest.dart';
import '../../bin/palindrome-numbers/palindrome_numbers.dart';

void main() {

    group('Palindrome Numbers:', () {
        
        group('Reverse', () {

            test('reverses digits', () {
                expect(new Palindrome(11).reverse(11), equals(11));
                expect(new Palindrome(203).reverse(203), equals(302));
                expect(new Palindrome(1234).reverse(1234), equals(4321));
            });

        });

        group('Palindrome', () {

            test('detects palindrome numbers', () {
                expect(new Palindrome(12321).isPalindrome(12321), isTrue);
            });

            test('detects non palindrome numbers', () {
                expect(new Palindrome(123).isPalindrome(123), isFalse);
            });

        });

        group('PalindromeSum', () {

            test('sum is not a palindrome number in the first iteration', () {
                expect(new Palindrome(48, maxIterations: 1).sumIsPalindromeRecursively(), isFalse);
            });

            test('sum is a palindrome number', () {
                expect(new Palindrome(102).isSumPalindrome(), isTrue);
            });

            test('sum is a palindrome number in the recursive solution', () {
                expect(new Palindrome(48, maxIterations: 2).sumIsPalindromeRecursively(), isTrue);
            });

        });

    });

}

