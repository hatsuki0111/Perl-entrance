#!/usr/bin/env perl
use strict;
use warnings;

my @array = ('Alice','Bob','Chris');
my $element0 = pop @array;
print "$element0\n";

my $element = shift @array;
print "$element\n";
