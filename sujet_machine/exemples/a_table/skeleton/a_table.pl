#!/usr/bin/perl

sub a_table0{
  my($n, $m, $salle) = @_;
  # Inserez votre code ici 
  
}
my ($n, $m) = @{[ map { int($_) } split(/\s+/, <STDIN>) ]};
my $cy = [];
foreach my $cz (0 .. $n - 1)
{
    $cy->[$cz] = [split(//, <STDIN>)];
}
my $salle = $cy;
a_table0($n, $m, $salle);


