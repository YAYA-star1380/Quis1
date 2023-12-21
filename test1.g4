/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

grammar test1;
Palindrome:'z' start EOF;
start
    :'a' start 'a'
    |'b' start 'b'
    |'a'
    |'b'
    |
    ;
 ws : [ \t\r\n]+ -> skip;
