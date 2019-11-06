#!/usr/bin/env perl
use Mojolicious::Lite;

my @entries = (); # 追加する
my @entriesMail = ();

get '/' => sub {
  my $c = shift;
  my $entry = $c->param('userName'); # 名前を追加
  my $entryMail = $c->param('userMail'); #メールアドレスを追加

  
    if($entryMail eq "age"){
      unshift @entries , $entry;
      unshift @entriesMail , $entryMail;
    }else{
        push @entries , $entry;
        push @entriesMail , $entryMail;
    }

 $c->stash( kakikomi => \@entries );# 変更
 $c->stash(kakikomiMail =>\@entriesMail);


 print '-----' ."\n"    ;       # 追加:単なる区切り線
 print $c->param('body') . "\n";# 追加:デバッグプリント
 print '-----' ."\n"    ;       # 追加:単なる区切り線
 $c->render('index');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'BBS';
<h1>掲示板です</h1>
<form action="/" method="get">
    名前:<br /><input name="userName" type="text"><br />
    メールアドレス:<br /><input name="userMail" type="text"><br />
    <input type="submit" value="投稿する">
</form>
% for my $kakiko(@{$kakikomi}){
  <%= $kakiko %><br />
% }
% for my $kakikoMail(@{$kakikomiMail}){
  <%= $kakikoMail %><br />
% }




@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
