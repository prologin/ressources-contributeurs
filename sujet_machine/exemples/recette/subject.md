## Énoncé

Joseph Marchand aime les crêpes. Non, il adore même les crêpes ! Les crêpes sont
sa vie, sa vie c'est les crêpes. Joseph Marchand a ainsi perfectionné sa recette
secrète au fil du temps. Les légendes racontent qu'elle est absolument
délicieuse, un goût absolument somptueux qui est hors de ce monde.

Malheureusement, toutes ces louanges ont éveillé la rage de son ennemi le plus
profond, le Braucauliman. Braucauliman est en effet déçu que sa recette de
brocoli a moins de succès. Il a donc changé l'ordre dans lequel les ingrédients
sont mis dans la recette.

Normalement, pour deux ingrédients $a$ et $b$, soit $a$ doit être mis
strictement avant $b$ dans la recette ou $b$ doit être mis strictement avant
$a$. Joseph se pose donc la question pour combien de paires d'ingrédients cette
condition est violée.

### Entrée

Les différents ingrédients sont représentés par les entiers de $1$ à $n$.
L'ordre des ingrédients est donné avec une séquence de $n$ entiers où chaque
entier entre $1$ et $n$ apparait exactement une fois. L'ingrédient $a$ à
l'indice $i$ doit apparaitre avant l'ingrédient $b$ à l'indice $j$ si et
seulement si $i < j$. L'ordre mélangé des ingrédients est donné la même manière.

 - La première ligne contient le nombre d'ingrédients $n$.
 - La deuxième ligne contient $n$ entiers qui représentent l'ordre prévu des
 ingrédients.
 - La dernière ligne contient $n$ entiers qui représentent l'ordre actuel des
 ingrédients.

### Sortie

Afficher le nombre de paires d'ingrédients modulo $100000007$ ($10^8+7$) qui
sont dans le mauvais ordre.

### Contraintes

 - $2\leq n \leq 200000$
