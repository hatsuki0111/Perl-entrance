#!/usr/bin/env perl
use strict;
use warnings;

my $h1 ={name => 'toru',food =>['uni','sake']};
my $h2 ={name => 'take',food =>['uni','ikura']};
my $h3 ={name => 'tom',food=>['tako','ika']};
my @array = ($h1,$h2,$h3);

my %arc = ();
for my $i (@array){
  for my $j(@{$i->{food}}){
    if(exists($arc{$j})){
      $arc{$j} += 1;
    }else{
      $arc{$j} = 1;
    }
  }
}

for my $key (sort {$arc{$b} <=> $arc{$a}} keys %arc){
print $key." " . $arc{$key}."\n";
}
