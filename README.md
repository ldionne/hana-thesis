## Théorie des catégories et métaprogrammation en C++
> Pour le cours __Projet de fin d'études__

Ce dépot contient deux choses. Premièrement, les sources LaTeX de mon projet
de fin d'études sont dans le répertoire `latex`. Deuxièmement, ma présentation
orale (basée sur [reveal.js][]) se trouve dans le répertoire courant.

La version PDF du projet est disponible dans `main.pdf`. La présentation du
projet est dans `index.html`. Les instructions qui suivent sont principalement
pour mon moi futur.


## Utilisation
D'abord, vous avez besoin de [CMake][]. La première étape est de générer le
_build system_ avec CMake. À partir de la racine du dépot:
```sh
    mkdir build
    cd build
    cmake ..
```

Ensuite, pour générer le PDF de mon projet de fin d'études, simplement lancer
la commande suivante à partir de `build/`:
```sh
    make latex
```

Pour visualiser la présentation, il y a deux possibilités. La première option
est simplement d'ouvrir le fichier `index.html` avec un navigateur. Sinon, à
partir de la racine du dépôt:
```sh
    npm install
    grunt serve &
```

puis se connecter à `localhost:8000` pour voir la présentation en local.
À noter que le fichier `index.html` est généré à partir de `index.in.html`.
Pour générer `index.html`,
```sh
    make index
```

<!-- Liens -->
[CMake]: http://www.cmake.org
[reveal.js]: https://github.com/hakimel/reveal.js
