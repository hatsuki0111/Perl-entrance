#!/usr/bin/env perl
use strict;
use warnings;

my $month_name = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
];
for my $num ( 0 .. 11 ) {
    print "$month_name->[$num]\n";    # 月の省略した英名を表示する
    print "${$month_name}[$num]";
}
