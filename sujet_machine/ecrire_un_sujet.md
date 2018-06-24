# Écire un sujet machine

## Choisir un algorithme

Avant d'écrire plein de code ou un enrobage marrant impliquant Joseph Marchand,
il est fondamental de se mettre d'accord sur la base du sujet, c'est-à-dire :
**l'algorithme**.

C'est notamment en fonction de l'algorithme que l'on va évaluer la difficulté de
l'exercice. Il est important de noter qu'il n'y a rien de honteux à faire des
exercices de niveau 1 ou 2, au contraire, il est assez difficile de réaliser des
sujets originaux, sympas et accessible à tous.

Prenons un exemple simple de potentiel niveau 2 : un parcours de tableau de
caractère à deux dimensions.

Un pseudo-code ressemblerait donc à cela :

```
char matrice[NB_LIG][NB_COL];

for (int lig = 0; lig < NB_LIG; lig++)
    for (int col = 0; col < NB_COL; col++)
        // reste de l'algorithme
```

## Définir le but de l'exercice

Une fois l'algorithme trouvé, il faut définir clairement le but de l'exercice.
Dans notre exemple précédent, on pourrait définir notre matrice comme étant un
terrain où sont situé des objets de deux types : '\*' et '#'. Le but serait alors
de vérifier si pour chaque objet '\*' il y a un objet '#' adjacent.

Par exemple :

```
.....
.*...
.#...
.....
```

Le candidat doit renvoyer vrai.

```
.....
.*...
.....
..#..
```

Le candidat doit renvoyer faux.

Notre pseudo-code ressemblerait maintenant à :

```
char matrice[NB_LIG][NB_COL];

for (int lig = 0; lig < NB_LIG; lig++)
    for (int col = 0; col < NB_COL; col++)
        if (matrice[lig][col] == '*')
            // Vérifier les 4 côtés adjacents de la case
```

## Des retours !

Lorsque vous avez un premier énoncé qui explique clairement le but de
l'exercice, un pseudo-code (ou une brève explication de la solution) ainsi que
quelques exemples simples, il faut demander des retours pour s'assurer que tout
convient.

## Enrober l'exercice

Maintenant que le fond de l'exercice est fixe, il faut transformer la forme.

Dans notre exemple :

Joseph Marchand est parti faire les courses. Le problème est qu'il est revenu
trop chargé et qu'il a perdu des bières tout le long de son chemin de retour.
Une fois chez lui, il fonce sur Exalead Map afin de regarder les images
satellites de son trajet afin de voir si ses bières sont toujours là. Il a en
particulier peur des nains voleurs de bières vivant dans les égoûts.

Écrivez un programme qui va aider Joseph Marchand à déterminer si un nain
voleur de bière est en train de lui voler une bière ou non.

Vous prenez en argument un tableau de caractères, sa longueur et sa largeur. Il
est composé comme suit :

- `.` : case vide
- `*` : une bière
- `#` : un nain voleur de bière

Votre fonction doit retourner 1 si un nain voleur de bière se trouve dans une
des quatres cases autour d'une des bières perdues en chemin, ou 0 sinon.

## Valider l'enrobage

À nouveau, une fois l'enrobage fait, il faut demander des retours dessus. En
l'occurence, l'exemple proposé juste au-dessus est trop limite : on se moque des
nains, on promeut la consommation d'alcool et on fait passer Joseph Marchand
pour un alcoolique. On va vous dire de le refaire en plus soft. Par exemple en
remplacant "bière" par "carotte" et "nain voleur de bière" par "lapin rose".

L'enrobage doit rester assez sobre : il sert à rendre le sujet attrayant, mais
l'énoncé doit rester court, clair et précis. L'enrobage ne doit pas perturber la
compréhension, au contraire, il devrait aider sur ce point.

## Implémentation du sujet

TODO: implementer_un_sujet.md
