import 'package:unittest/unittest.dart';
import '../../bin/palindrome-numbers/palindrome_numbers.dart';

void main() {

    group('Palindrome Numbers:', () {
        
        group('Reverse', () {

            test('reverses digits', () {
                expect(new Palindrome(11, 1).reverse(11), equals(11));
                expect(new Palindrome(203, 1).reverse(203), equals(302));
                expect(new Palindrome(1234, 1).reverse(1234), equals(4321));
            });

        });

        group('Palindrome', () {

            test('detects palindrome numbers', () {
                expect(new Palindrome(12321, 1).isPalindrome(12321), isTrue);
            });

            test('detects non palindrome numbers', () {
                expect(new Palindrome(123, 1).isPalindrome(123), isFalse);
            });

        });

        group('PalindromeSum', () {

            test('sum is not a palindrome number in the first iteration', () {
                expect(new Palindrome(48, 1).sumIsPalindrome(), isFalse);
            });

            test('sum is a palindrome number', () {
                expect(new Palindrome(102, 1).sumIsPalindrome(), isTrue);
            });

            test('sum is a palindrome number in the recursive solution', () {
                expect(new Palindrome(48, 2).sumIsPalindrome(), isTrue);
            });


        });

        group('Specific examples', () {

            test('187 needs more than 22 iterations to find the palindrome', () {
                expect(new Palindrome(187, 22).sumIsPalindrome(), isFalse);
                expect(new Palindrome(187, 23).sumIsPalindrome(), isTrue);
            });

        });

    });

}

