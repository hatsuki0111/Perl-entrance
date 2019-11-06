#!/usr/bin/env perl
use Mojolicious::Lite;

get '/fizzubuzz' => sub {
  my $c = shift;

  my @result = ();
   for my $i(1..100){
   if(($i%3 == 0)&&($i%5 == 0)){
    push @result, 'fizzubuzz';
   }elsif($i%3==0){
    push @result , 'fizz';
   }elsif($i%5==0){
    push @result , 'buzz';
   }else{
   push @result,$i;
   }
  }
  $c->stash(result=>\@result);
  $c->render(template => 'fizzubuzz');
};

app->start;
__DATA__

@@ fizzubuzz.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>
% for my $i(@{$result}){
 <%=$i %><br />
%}



@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
