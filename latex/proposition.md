# Algèbre, catégories et métaprogrammation en C++

Certains langages de programmation utilisent des concepts mathématiques pour
faciliter le raisonnement à propos d'un programme. Notamment, le langage
purement fonctionnel [Haskell][1] utilise des notions d'algèbre et de théorie
des catégories pour définir des interfaces génériques encapsulant des choses
omniprésentes comme le non-déterminisme et la propagation d'erreurs.

Bien qu'il fasse partie d'un paradigme complètement différent, le langage C++
possède un sous-langage purement fonctionnel ayant des [liens bien connus][2]
avec le Haskell. Il s'agit des templates, qui constituent un langage Turing
complet interprété par le compilateur et qui ont donné naissance à la
métaprogrammation statique en C++, devenue omniprésente dans le C++ moderne.

Débutée dans le cadre du programme [Google Summer of Code 2014][3] en
collaboration avec la communauté [Boost][4], [Hana][5] est une bibliothèque C++
qui vise à faciliter la métaprogrammation en C++ en fournissant des outils
de base dont les propriétés sont spécifiées dans un langage mathématique
semi-formel. Inspirés du Haskell, ces outils de base réalisent eux aussi
des concepts provenant de l'algèbre et de la théorie des catégories, mais
ils sont utilisés à des fins de métaprogrammation statique.


Concrètement, ce projet de fin d'études consiste à:
- Faire une revue de l'utilisation de l'algèbre et de la théorie des catégories
  dans le langage de programmation Haskell.

- Introduire les concepts mathématiques utilisés dans Hana:
    + Monoïdes, groupes, anneaux, domaines intègres
    + Catégories, foncteurs, foncteurs monoïdaux, monades, co-monades,
      produits, catamorphismes

- Expliquer comment ces concepts se réalisent au niveau de la programmation:
    + Expliquer comment les concepts fournis par la bibliothèque correspondent
      à des concepts mathématiques bien connus, avec preuves à l'appui.
    + Présenter des exemples d'objets concrets qui réalisent ces concepts,
      avec preuves à l'appui.

[Cette section contient des points optionnels qui relèvent plus de la recherche]
- Formaliser le foncteur Type, qui permet de représenter un type d'un langage
  de programmation comme une instance d'un singleton qui représente ce type
  lors de l'exécution du programme. Dans le contexte de Hana, ce foncteur
  permet de faire des calculs sur des types en utilisant la même syntaxe
  qui est utilisée pour manipuler des objets à l'exécution. J'aimerais
  confirmer qu'il s'agit bien d'un foncteur ayant certaines propriétés
  d'injectivité.

- Formaliser la co-monade Lazy, qui permettrait d'encapsuler l'évaluation
  paresseuse derrière une interface co-monadique, et ce même dans un langage
  à évaluation stricte comme le C++. J'aimerais confirmer que Lazy est bien
  une co-monade et explorer comment elle pourrait interagir avec une algèbre
  booléenne pour créer un `if` paresseux.

- Introduire des concepts qui n'ont pas ou peu de précédents en mathématiques,
  mais qui sont néanmoins utiles en programmation. Tenter de les formaliser et
  voir si ça nous donne quelque chose d'utile.


[1]: https://www.haskell.org/haskellwiki/Haskell
[2]: http://bartoszmilewski.com/2009/10/21/what-does-haskell-have-to-do-with-c
[3]: https://www.google-melange.com/gsoc/document/show/gsoc_program/google/gsoc2014/about_page
[4]: http://www.boost.org
[5]: https://github.com/ldionne/hana
