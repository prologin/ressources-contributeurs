<?php
function recette0($n, &$ordre, &$desordre) {
    //  Inserez votre code ici 
}
$n = intval(trim(fgets(STDIN)));
$ordre = array_map("intval", explode(" ", fgets(STDIN)));
$desordre = array_map("intval", explode(" ", fgets(STDIN)));
recette0($n, $ordre, $desordre);

