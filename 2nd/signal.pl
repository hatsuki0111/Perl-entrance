#!/usr/bin/env perl
use strict;
use warnings;

my $signal = 'yellow';

if($signal eq 'blue'){
  print 'WALK';
}elsif($signal eq 'red'){
  print 'Dont WALK';
}elsif($signal eq 'yellow'){
  print 'Please Stop';
}
