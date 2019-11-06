#!/usr/bin/env perl
use strict;
use warnings;

my @animal = (
              ['shiba','bull'],
              ['mike','kuro'],
              ['eagle','crow']
              );

print "$animal[2]->[0]\n$animal[2]->[1]";
