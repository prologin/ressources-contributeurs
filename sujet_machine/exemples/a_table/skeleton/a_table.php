<?php
function a_table0($n, $m, &$salle) {
    //  Inserez votre code ici 
}
list($n, $m) = array_map("intval", explode(" ", fgets(STDIN)));
$cw = array();
for ($cx = 0; $cx < $n; $cx++)
    $cw[$cx] = fgets(STDIN);
$salle = $cw;
a_table0($n, $m, $salle);

