# Implémenter un sujet machine

Un exercice machine suit la structure suivante :

```
mon_exercice/
├── author
├── problem.props
├── ref.xxx
├── subject.md
└── test
    ├── 01.in
    ├── 01.out
    ├── 02.in
    ├── 02.out
    └── ...
```

Il faut éviter pour tout dossier/fichier d'utiliser des espaces ou accents dans
le nom.

**Attention si vous êtes sous Windows**, configurez correctement votre éditeur
pour qu'il insère des `\n` et non des `\r\n` en fin de ligne sinon tous les
tests seront faux.

## Créer l'exercice

Le fichier `author` indique qui a écrit le sujet (nom, prénom, mail).

Les caractéristiques de l'exercice sont renseignées dans le fichier
`problem.props` :

```
title: nom complet de l'exercice
difficulty: niveau de l'exercice (0, 1, ... 8); 8 étant le plus dur
time: limite de temps en ms
mem: limite de mémoire en kB
samples: les tests d'entrée qui seront affichés comme exemple (laissez vide, ça
         sera modifié plus tard)
performance: les tests d'entrée qui ne seront pas bloquants mais rapporteront
             des points bonus (laissez vide, ça sera modifié plus tard)
hidden: les tests spécifiés ne seront pas affichés en mode "diff", le résultat
        attendu sera donc caché !
```

Par exemple :

```
title: La réponse à la question universelle
difficulty: 0
time: 200
mem: 100
samples: 01
performance: 05
hidden: 04 05
```

## Rédiger le sujet

Le sujet est écrit en [Markdown](https://en.wikipedia.org/wiki/Markdown) dans
`subject.md` :

```
## Énoncé

### Entrée

### Sortie

### Contraintes

### Contraintes de performance
```

Pour utiliser des symboles mathématiques, renseignez vos expressions entre `$`
par exemple : `$1 \le N \le 1000$`

## Écrire la référence

Un fichier de référence solution est demandée dans `ref.xxx` où `.xxx`
correspond à l'extension du langage que vous avez utilisé.

## Écrire des tests

Chaque exercice a en général entre 5 et 20 tests. Pour chaque test on a un
fichier `.in` et un fichier `.out` qui doivent avoir le même nom (par exemple,
`01.in` et `01.out`). On les appelle généralement 01, 02, ... Les plus simples
doivent être au départ, les plus difficiles à la fin. Vous pouvez les écrire à
la main ou les générer (dans ce cas rajouter le programme de génération au
dossier de l'exercice par exemple `gen.xxx`), tant qu'ils sont corrects. En
général les deux premiers sont écrits à la main, car ils servent d'exemple pour
le sujet.

Évitez de faire des fichiers trop gros, disons que la limite max est de ~3 MB
pour les gros tests.

Ensuite, reprenez `problem.props` et ajoutez à la ligne `samples:` les noms des
problèmes qui seront affichés dans le sujet comme exemple.
