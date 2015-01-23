# Plan de travail

## Objectif du projet
Montrer comment la théorie des catégories peut être utilisée pour formaliser
certains aspects de la métaprogrammation statique en C++.

À noter que j'ai décidé d'exclure la partie traitant d'algèbre abstraite
parce que

- elle m'intéresse moins
- elle est plutôt évidente
- parler de la théorie des catégories seulement devrait être une tâche suffisante

## Démarche
Consulter les excellentes ressources disponibles sur internet faisant des
liens entre le Haskell et la théorie des catégories. Appliquer la théorie
à la métaprogrammation en C++ au lieu du Haskell; cette partie n'a jamais
été faite auparavant et j'irai donc un peu comme on fait de la recherche;
par tâtonnement dirigé et en me basant sur ce qui existe pour le Haskell.

## Organisation du travail
> À noter que les nombres de pages sont à titre indicatif seulement et seront
> certainement amenés à changer. Ils représentent pour moi un indicateur du
> niveau de détails dans lequel je souhaite entrer.

- Introduction: (~ 1 page)
    + La programmation fonctionnelle
        * Lien avec les mathématiques
        * Haskell et la théorie des catégories
    + Le C++
        * L'apparition des templates
        * La Turing-complétude accidentelle
        * La métaprogrammation
        * Lien avec la programmation fonctionnelle

- Introduction à la métaprogrammation en C++ (~ 6 pages)
    + Les templates (~ 1 page)
    + La métaprogrammation classique style MPL (~ 2 pages)
        * Représentation des valeurs par des types
        * Séquences de type
    + La métaprogrammation dans Hana (~ 2 pages)
        * Utilisation de la déduction de type
        * Utilisation de singletons pour les calculs sur des types
        * Séquences hétérogènes
    + Les applications (~ 1 page)
    + Lien avec la programmation fonctionnelle (avec le lambda calcul?)

- Introduction aux catégories (~ 5 pages)
    + Définition formelle (~ 1 page)
    + Quelques exemples de base (~ 2 pages)
        * Catégories presque triviales
        * Set
        * Grp
    + La catégorie Hask (~ 1 page)
    + La catégorie Hana (~ 1 page)

- La théorie des catégories dans Hana (~ 15 pages total)
    + Foncteurs (~ 5 pages)
        * Définition formelle
        * Définition dans Hana
        * Intuition
        * Réalisation dans Hana: Maybe, Either, Tuple
    + Transformations naturelles (~ 2 pages)
        * Définition formelle
        * Exemples de transformations naturelles dans Hana
    + Monades (~ 5 pages)
        * Définition formelle
        * Définition dans Hana
        * Intuition
        * Réalisation dans Hana + preuves: Maybe, Either, Tuple
    + Produits (~ 3 pages)
        * Définition formelle
        * Définition dans Hana
        * Réalisation dans Hana + preuves: Pair

    + Bonus (si temps et si j'y arrive)
        * Définition de la catégorie MPL
        * Formalisation du foncteur `Type: MPL -> Hana`:
            La fidélité du foncteur nous donnerait une preuve que tout ce
            qui peut être fait dans MPL peut être fait dans Hana. En effet,
            si les flèches de MPL sont des métafonctions, je pense que la
            fidélité du foncteur nous donnerait qu'il est possible d'exprimer
            toutes les métafonctions de MPL (et peut-être plus) dans Hana. Il
            me reste du défrichage à faire pour me rendre là.

- Conclusion (revue des contributions) (~ 1 page)


## Échéancier
- 23 janvier: Remise du plan de travail

- [24 janvier - 18 février]:
    + Squelette du travail au complet
    + Version presque finale de l'introduction aux catégories et de la
      théorie des catégories dans Hana (sauf le bonus). Je souhaite avoir
      une version presque finale de ces parties très rapidement parce que
      c'est là que je prévois de rencontrer le plus de difficultés.

- 19 février: Rapport d'étape

- [20 février - 23 avril]
    + Rédiger l'introduction et la conclusion
    + Compléter l'introduction à la métaprogrammation en C++.
    + Commencer à monter la présentation orale
    + Rédiger la partie bonus si le temps le permet

- 24 avril: Remise du document final

- [25 avril - 27 avril]:
    + Finaliser le travail sur la présentation orale

- 28 avril: Présentation orale
