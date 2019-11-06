#!/usr/bin/env perl
use strict;
use warnings;

my@array =(1..100);
my $array_ref = \@array;
my @deref_array = @{$array_ref};

print "@deref_array";
