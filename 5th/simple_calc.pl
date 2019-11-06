
sub add{
  my ($left,$right) = @_;
  return $left+$right;
}

my $result = add(2,5);
print($result,"\n");

sub min{
  my ($left_1,$right_1) = @_;
  return $left_1 - $right_1;
}
my $result_1 = min(5,2);
print($result_1,"\n");

sub mul{
  my ($left_2,$right_2) = @_;
  return $left_2 * $right_2;
}
my $result_2 = mul(5,2);
print($result_2,"\n");

sub div{
  my ($left_3,$right_3) = @_;
  return $left_3 / $right_3;
}
my $result_3 = div(4,2);
print($result_3,"\n");
