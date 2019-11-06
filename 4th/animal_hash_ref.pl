#!/usr/bin/env perl
use strict;
use warnings;

my %animal = (dog =>{
              name => 'Taro',
              color => 'brown'},
              cat=>{
              name => 'Tama',
              color => 'white'});

print $animal{cat}->{color}. "\n";
print $animal{dog}->{color}. "\n";
