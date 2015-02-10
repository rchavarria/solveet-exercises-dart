# Solveet Exercises in Dart [![Build Status](https://travis-ci.org/rchavarria/solveet-exercises-dart.svg?branch=master)](https://travis-ci.org/rchavarria/solveet-exercises-dart)

A set of solutions to [Solveet] exercises writen in the Dart programming language.

## Requirements

- [Dart SDK](https://www.dartlang.org): needs to be installed

## Project structure

Tests for every exercise can be found under the `test` folder separated in their
own folder. The implementation of every solution can be found under the `bin`
folder, at the same level of the corresponding test.

All tests can be run with [Dart Test Runner](https://pub.dartlang.org/packages/test_runner)
tool. Just install it, and run it from the root of this project.

    $ pub global activate test_runner
    $ pub global run test_runner

## Exercises

- Palindrome numbers:
[exercise](http://www.solveet.com/exercises/Numero-capicua-con-recursividad-en-cualquier-lenguaje/357),
[tests](test/palindrome-numbers) and
[solution](bin/palindrome-numbers)
- Football t-shirts:
[exercise](http://www.solveet.com/exercises/Camisetas-de-futbol-con-recursividad-en-cualquier-lenguaje/356),
[solution](test/football-tshirts)

## 

[Solveet]: http://solveet.com

