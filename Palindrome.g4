/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

grammar Palindrome;

// Define lexer rules
DIGIT : '0' | [1-9] [0-9]*;
WS    : [ \t\r\n]+ -> skip;

// Define parser rules
palindromeNumber: DIGIT | palindromeSequence;

palindromeSequence: DIGIT palindromeNumber? DIGIT;

// Ensure the entire input is consumed
start: palindromeNumber EOF;

