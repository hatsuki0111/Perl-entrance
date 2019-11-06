#!/usr/bin/env perl
use strict;
use warnings;

print 'input Number>';
my $number1 = <STDIN>;
print 'input Number>';
my $number2 = <STDIN>;
chomp $number1;
chomp $number2;

print "$number1+$number2=".($number1+$number2);
print "\n";
print "$number1-$number2=".($number1-$number2);
print "\n";
print "$number1*$number2=".($number1*$number2);
print "\n";
print "$number1/$number2=".($number1/$number2);
print "\n";
