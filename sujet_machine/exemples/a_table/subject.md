## Énoncé

La crêperie de Joseph Marchand est en désordre ! Il y a des tables partout, et
il devient difficile de circuler pour servir les clients. En effet, il sera tout
à fait malpoli qu'un serveur ait besoin de jouer à saute-mouton au-dessus des
tables, risquant de mettre les pieds dans le plat ! Joseph n'est cependant pas
sûr que cela se produise, il a placé les tables après un entraînement intensif à
Tetris&trade; : il est devenu expert en agencement.

Joseph aimerait donc savoir combien d'emplacements libres dans son restaurant il
lui est impossible d'accéder depuis ses cuisines. La crêperie sera représentée
sous la forme d'une carte rectangulaire où '.' est un emplacement libre, et 'X'
désigne une table qui bloque Joseph lors de son passage. Joseph a ses cuisines
placées dans le coin haut à gauche de la grille correspondant à la case (0;0) où
il est garanti qu'aucune table n'est jamais posée.

### Entrée

Les dimensions du restaurant sont indiquées sur la première ligne : $N$ et $M$.
Puis, sur les $N$ lignes qui suivent, il y a $M$ caractères : 'X' pour une table
qui bloque le chemin de Joseph ou '.' pour une case libre.

### Sortie

Un entier représentant le nombre d'emplacements libres inaccessibles pour Joseph
depuis ses cuisines. À noter qu'une table n'est pas considérée comme un
emplacement libre.

### Contraintes

- $1 \le N \le 100$
- $1 \le M \le 100$
