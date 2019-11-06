#!/usr/bin/env perl
use strict;
use warnings;

my $word = "Ther's more than one way to do it.";
my @array = split / /,$word;
for my $i(@array){
print "$i\n";
}
