[![Build Status](https://github.com/rkoeninger/euler/actions/workflows/ci.yml/badge.svg)](https://github.com/rkoeninger/euler/actions/workflows/ci.yml)

# Project Euler Solutions

All solutions are provided in [Factor](https://factorcode.org/), a dynamically typed, stack-oriented, concatenative language that offers a different perspective on functional programming.

Factor's bundled library includes tons of helpful "vocabularies" like `math.combinatorics` and `math.primes`, some of which would solve a problem with single word so I avoid making full use of them until I've implemented a concept at least once. For instance, the first time finding the prime factors of a number comes up, I'll write the code out myself, but if it comes up again in later problems, I'll just use `math.primes.factors`.

| #  | Descripion | Code |
|---:|------------|------|
|  1 | [Sum of multiples of 3 or 5 < 1000](https://projecteuler.net/problem=1) | [euler1.factor](https://github.com/rkoeninger/euler/blob/master/src/euler1/euler1.factor) |
|  2 | [Sum of even Fibonacci numbers < 4,000,000](https://projecteuler.net/problem=2) | [euler2.factor](https://github.com/rkoeninger/euler/blob/master/src/euler2/euler2.factor) |
|  3 | [Largest prime factor of 600,851,475,143](https://projecteuler.net/problem=3) | [euler3.factor](https://github.com/rkoeninger/euler/blob/master/src/euler3/euler3.factor) |
|  4 | [Largest palindrome product of \[100..999\] * \[100..999\]](https://projecteuler.net/problem=4) | [euler4.factor](https://github.com/rkoeninger/euler/blob/master/src/euler4/euler4.factor) |
|  5 | [Lowest common multiple of \[1..20\]](https://projecteuler.net/problem=5) | [euler5.factor](https://github.com/rkoeninger/euler/blob/master/src/euler5/euler5.factor) |
|  6 | [\(Square of sum - sum of squares\) of \[1..100\]](https://projecteuler.net/problem=6) | [euler6.factor](https://github.com/rkoeninger/euler/blob/master/src/euler6/euler6.factor) |
|  7 | [10,001st prime](https://projecteuler.net/problem=7) | [euler7.factor](https://github.com/rkoeninger/euler/blob/master/src/euler7/euler7.factor) |
|  8 | [Largest product of 13 consecutive digits in 1000-digit number](https://projecteuler.net/problem=8) | [euler8.factor](https://github.com/rkoeninger/euler/blob/master/src/euler8/euler8.factor) |
|  9 | [Pythagorean triplet where a + b + c = 1000](https://projecteuler.net/problem=9) | [euler9.factor](https://github.com/rkoeninger/euler/blob/master/src/euler9/euler9.factor) |
| 10 | [Sum of primes below 2,000,000](https://projecteuler.net/problem=10) | [euler10.factor](https://github.com/rkoeninger/euler/blob/master/src/euler10/euler10.factor) |
| 11 | [Greatest 4-in-a-row product in grid](https://projecteuler.net/problem=11) | [euler11.factor](https://github.com/rkoeninger/euler/blob/master/src/euler11/euler11.factor) |
| 12 | [First triangle number with over 500 divisors](https://projecteuler.net/problem=12) | [euler12.factor](https://github.com/rkoeninger/euler/blob/master/src/euler12/euler12.factor) |
| 13 | [First 10 digits of sum of 100 50-digit numbers](https://projecteuler.net/problem=13) | [euler13.factor](https://github.com/rkoeninger/euler/blob/master/src/euler13/euler13.factor) |
| 14 | [Longest Collatz sequence starting under 1,000,000](https://projecteuler.net/problem=14) | [euler14.factor](https://github.com/rkoeninger/euler/blob/master/src/euler14/euler14.factor) |
| 15 | [Number of unique paths across a grid](https://projecteuler.net/problem=15) | [euler15.factor](https://github.com/rkoeninger/euler/blob/master/src/euler15/euler15.factor) |
| 16 | [Sum of the digits of 2^1000](https://projecteuler.net/problem=16) | [euler16.factor](https://github.com/rkoeninger/euler/blob/master/src/euler16/euler16.factor) |
| 17 | [Count of letters used to represent \[1..1000\]](https://projecteuler.net/problem=17) | [euler17.factor](https://github.com/rkoeninger/euler/blob/master/src/euler17/euler17.factor) |
| 18 | [Max value path through 15-row triangluar grid](https://projecteuler.net/problem=18) | [euler18.factor](https://github.com/rkoeninger/euler/blob/master/src/euler18/euler18.factor) |
| 19 | [Count of Sundays in 20th century](https://projecteuler.net/problem=19) | [euler19.factor](https://github.com/rkoeninger/euler/blob/master/src/euler19/euler19.factor) |
| 20 | [Sum of the digits of 100!](https://projecteuler.net/problem=20) | [euler20.factor](https://github.com/rkoeninger/euler/blob/master/src/euler20/euler20.factor) |
| 21 | [Sum of amicable numbers under 10,000](https://projecteuler.net/problem=21) | [euler21.factor](https://github.com/rkoeninger/euler/blob/master/src/euler21/euler21.factor) |
| 22 | [Sum of scores of first names based on characters, sorted position](https://projecteuler.net/problem=22) | [euler22.factor](https://github.com/rkoeninger/euler/blob/master/src/euler22/euler22.factor) |
| 23 | [Sum of positive numbers that are not sum of two abundant numbers](https://projecteuler.net/problem=23) | [euler23.factor](https://github.com/rkoeninger/euler/blob/master/src/euler23/euler23.factor) |
| 24 | [1,000,000th lexicographic permutation of 0,1,2,3,4,5,6,7,8,9](https://projecteuler.net/problem=24) | [euler24.factor](https://github.com/rkoeninger/euler/blob/master/src/euler24/euler24.factor) |
| 25 | [Index of 1st 1000-digit Fibonacci number](https://projecteuler.net/problem=25) | [euler25.factor](https://github.com/rkoeninger/euler/blob/master/src/euler25/euler25.factor) |
| 26 | [Find n in \[1..1000\] where 1/n has longest decimal cycle](https://projecteuler.net/problem=26) | [euler26.factor](https://github.com/rkoeninger/euler/blob/master/src/euler26/euler26.factor) |
| 27 | [Product of coefficients of quadratic with greatest number of primes](https://projecteuler.net/problem=27) | [euler27.factor](https://github.com/rkoeninger/euler/blob/master/src/euler27/euler27.factor) |
| 28 | [Sum of values along the diagonals of a spiral grid](https://projecteuler.net/problem=28) | [euler28.factor](https://github.com/rkoeninger/euler/blob/master/src/euler28/euler28.factor) |
| 29 | [Count of distinct terms of a^b where a, b = \[2..100\]](https://projecteuler.net/problem=29) | [euler29.factor](https://github.com/rkoeninger/euler/blob/master/src/euler29/euler29.factor) |
| 30 | [Sum of numbers equal to sum of each digit to 5th power](https://projecteuler.net/problem=30) | [euler30.factor](https://github.com/rkoeninger/euler/blob/master/src/euler30/euler30.factor) |
| 31 | [Count of coin combinations that make £2](https://projecteuler.net/problem=31) | [euler31.factor](https://github.com/rkoeninger/euler/blob/master/src/euler31/euler31.factor) |
| 32 | [Sum of products whose divisors/product use unique digits 1..9](https://projecteuler.net/problem=32) | [euler32.factor](https://github.com/rkoeninger/euler/blob/master/src/euler32/euler32.factor) |
| 33 | [Product of denominators of digit-cancellable fractions](https://projecteuler.net/problem=33) | [euler33.factor](https://github.com/rkoeninger/euler/blob/master/src/euler33/euler33.factor) |
| 34 | [Sum of numbers equal to sum of factorials of digits](https://projecteuler.net/problem=34) | [euler34.factor](https://github.com/rkoeninger/euler/blob/master/src/euler34/euler34.factor) |
| 35 | [Count of circular primes under 1,000,000](https://projecteuler.net/problem=35) | [euler35.factor](https://github.com/rkoeninger/euler/blob/master/src/euler35/euler35.factor) |
| 36 | [Sum of numbers that are palindromes in base 2 and 10](https://projecteuler.net/problem=36) | [euler36.factor](https://github.com/rkoeninger/euler/blob/master/src/euler36/euler36.factor) |
| 37 | [Sum of primes that can be truncated and still be prime](https://projecteuler.net/problem=37) | [euler37.factor](https://github.com/rkoeninger/euler/blob/master/src/euler37/euler37.factor) |
| 38 | [Greatest 1-to-9 pandigital concatentated product](https://projecteuler.net/problem=38) | [euler38.factor](https://github.com/rkoeninger/euler/blob/master/src/euler38/euler38.factor) |
| 39 | [Number which is sum of greatest number of pythagorean triples](https://projecteuler.net/problem=39) | [euler39.factor](https://github.com/rkoeninger/euler/blob/master/src/euler39/euler39.factor) |
| 40 | [Product of exponentially increasing digits in irrational number](https://projecteuler.net/problem=40) | [euler40.factor](https://github.com/rkoeninger/euler/blob/master/src/euler40/euler40.factor) |
| 41 | [Greatest pandigital prime](https://projecteuler.net/problem=41) | [euler41.factor](https://github.com/rkoeninger/euler/blob/master/src/euler41/euler41.factor) |
| 42 | [Count of words with letters that add up to triangular numbers](https://projecteuler.net/problem=42) | [euler42.factor](https://github.com/rkoeninger/euler/blob/master/src/euler42/euler42.factor) |
| 43 | [Sum of pandigitals with substrings divisble by successive primes](https://projecteuler.net/problem=43) | [euler43.factor](https://github.com/rkoeninger/euler/blob/master/src/euler43/euler43.factor) |
| 44 | [Pentagonal number pair whose sum and difference are pentagonal](https://projecteuler.net/problem=44) | [euler44.factor](https://github.com/rkoeninger/euler/blob/master/src/euler44/euler44.factor) |
| 45 | [Triangular number that is also pentagonal and hexagonal](https://projecteuler.net/problem=45) | [euler45.factor](https://github.com/rkoeninger/euler/blob/master/src/euler45/euler45.factor) |
| 46 | [First number that invalidates Goldbach's other conjecture](https://projecteuler.net/problem=46) | [euler46.factor](https://github.com/rkoeninger/euler/blob/master/src/euler46/euler46.factor) |
| 47 | [First of 4 consecutive numbers with 4 distinct prime factors](https://projecteuler.net/problem=47) | [euler47.factor](https://github.com/rkoeninger/euler/blob/master/src/euler47/euler47.factor) |
| 48 | [Last 10 digits of sum(n^n), n = \[1..1000\]](https://projecteuler.net/problem=48) | [euler48.factor](https://github.com/rkoeninger/euler/blob/master/src/euler48/euler48.factor) |
| 49 | [Conistently increasing 4-digit prime sequence](https://projecteuler.net/problem=49) | [euler49.factor](https://github.com/rkoeninger/euler/blob/master/src/euler49/euler49.factor) |
| 50 | [Greatest prime < 1,000,000 that is sum of consecutive primes](https://projecteuler.net/problem=50) | [euler50.factor](https://github.com/rkoeninger/euler/blob/master/src/euler50/euler50.factor) |
| 51 | [Find smallest prime that is part of substituted-digits family of size 8](https://projecteuler.net/problem=51) | [euler51.factor](https://github.com/rkoeninger/euler/blob/master/src/euler51/euler51.factor) |
| 52 | [First number where 2n, 3n, 4n, 5n and 6n all have same digits](https://projecteuler.net/problem=52) | [euler52.factor](https://github.com/rkoeninger/euler/blob/master/src/euler52/euler52.factor) |
| 53 | [Number of subsets size greater than 1,000,000 for sets size <= 100](https://projecteuler.net/problem=53) | [euler53.factor](https://github.com/rkoeninger/euler/blob/master/src/euler53/euler53.factor) |
| 54 | [Determine winning poker hands](https://projecteuler.net/problem=54) | [euler54.factor](https://github.com/rkoeninger/euler/blob/master/src/euler54/euler54.factor) |
| 55 | [Count of potential Lychrel numbers under 10,000](https://projecteuler.net/problem=55) | [euler55.factor](https://github.com/rkoeninger/euler/blob/master/src/euler55/euler55.factor) |
| 56 | [Greatest digit sum for a^b where a, b = \[1..99\]](https://projecteuler.net/problem=56) | [euler56.factor](https://github.com/rkoeninger/euler/blob/master/src/euler56/euler56.factor) |
| 57 | [Esitmations of sqrt(2) that have greater numerator](https://projecteuler.net/problem=57) | [euler57.factor](https://github.com/rkoeninger/euler/blob/master/src/euler57/euler57.factor) |
| 58 | [Ratio of # of primes/all #'s in diagonals of outward spiraling grid](https://projecteuler.net/problem=58) | [euler58.factor](https://github.com/rkoeninger/euler/blob/master/src/euler58/euler58.factor) |
| 59 | [Reverse XOR cypher of english text](https://projecteuler.net/problem=59) | [euler59.factor](https://github.com/rkoeninger/euler/blob/master/src/euler59/euler59.factor) |
| 67 | [Max value path through 100-row triangluar grid](https://projecteuler.net/problem=67) | [euler67.factor](https://github.com/rkoeninger/euler/blob/master/src/euler67/euler67.factor) |
| 69 | [Value in \[1..1,000,000\] where n/φ(n) is greatest](https://projecteuler.net/problem=69) | [euler69.factor](https://github.com/rkoeninger/euler/blob/master/src/euler69/euler69.factor) |
| 70 | [Value in \[1..(10^7)-1\] where n, φ(n) are permutations and n/φ(n) is least](https://projecteuler.net/problem=70) | [euler70.factor](https://github.com/rkoeninger/euler/blob/master/src/euler70/euler70.factor) |
| 71 | [Find closest, lower fraction to 3/7 with denominator <= 1,000,000](https://projecteuler.net/problem=71) | [euler71.factor](https://github.com/rkoeninger/euler/blob/master/src/euler71/euler71.factor) |
| 72 | [Count of reduced fractions in \(0,1\) with denominator in \[2..1,000,000\]](https://projecteuler.net/problem=72) | [euler72.factor](https://github.com/rkoeninger/euler/blob/master/src/euler72/euler72.factor) |
| 79 | [Derive passcode from sample subsequences](https://projecteuler.net/problem=79) | [euler79.factor](https://github.com/rkoeninger/euler/blob/master/src/euler79/euler79.factor) |
| 85 | [Area of rectangular grid with number of sub-rectangles closest to 2,000,000](https://projecteuler.net/problem=85) | [euler85.factor](https://github.com/rkoeninger/euler/blob/master/src/euler85/euler85.factor) |
| 92 | [Number of square digits chains that arrive at 89 starting under 10,000,000](https://projecteuler.net/problem=92) | [euler92.factor](https://github.com/rkoeninger/euler/blob/master/src/euler92/euler92.factor) |
| 94 | [Sum of perimeters of almost equilateral triangles with integer areas](https://projecteuler.net/problem=94) | [euler94.factor](https://github.com/rkoeninger/euler/blob/master/src/euler94/euler94.factor) |
| 97 | [Last 10 digits of (28433×(2^7830457))+1](https://projecteuler.net/problem=97) | [euler97.factor](https://github.com/rkoeninger/euler/blob/master/src/euler97/euler97.factor) |
| 100 | [Arranged probability](https://projecteuler.net/problem=100) | [euler100.factor](https://github.com/rkoeninger/euler/blob/master/src/euler100/euler100.factor) |
| 102 | [Count of triangles containing origin](https://projecteuler.net/problem=102) | [euler102.factor](https://github.com/rkoeninger/euler/blob/master/src/euler102/euler102.factor) |
| 104 | [First fibonacci number with first 9 and last 9 digits are pandigital](https://projecteuler.net/problem=104) | [euler104.factor](https://github.com/rkoeninger/euler/blob/master/src/euler104/euler104.factor) |
