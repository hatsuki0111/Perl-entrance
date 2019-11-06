#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my %Japan = (
            tokyo => ['gotanda','shibuya'],
            osaka => ['shinsaibashi'],
            okinawa =>['naha','yomitan'],
            hokkaido =>['sapporo','obihiro'],
            fukuoka => ['hakata'] );

print $Japan{tokyo}->[0]. "\n";
print $Japan{tokyo}->[1]. "\n";

push @{$Japan{osaka}} ,'umeda';
print "@{$Japan{osaka}}\n";
push @{$Japan{okinawa}} , 'piyo';
print "@{$Japan{okinawa}}\n";

push @{$Japan{hokkaido}} , 'chitose';
shift @{$Japan{hokkaido}};
print "@{$Japan{hokkaido}}";

delete $Japan{fukuoka};
print Dumper(\%Japan);

for my $key (keys %Japan){
  my @value = @{$Japan{$key}};
  print "$key is @value\n";
}
