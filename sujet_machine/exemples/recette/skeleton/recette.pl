#!/usr/bin/perl

sub recette0{
  my($n, $ordre, $desordre) = @_;
  # Inserez votre code ici 
  
}
my $n = int( <STDIN> );
my $ordre = [ map { int($_) } split(/\s+/, <STDIN>) ];
my $desordre = [ map { int($_) } split(/\s+/, <STDIN>) ];
recette0($n, $ordre, $desordre);


