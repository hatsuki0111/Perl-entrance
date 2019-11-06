#!/usr/bin/env perl
use strict;
use warnings;

print 'input Number>';
my $number1 = <STDIN>;
chomp $number1;

my $answer = 10;

if($answer == $number1){
  print "OK\n";
}elsif($answer-5 <= $number1 || $answer+5 >= $number1){
  print "near\n";
}elsif($answer < $number1){
  print "too big\n";
}elsif($answer > $number1){
  print "too small\n";
}
