# 📝 Exercice : Système de Gestion de Commandes de Restaurant

## Contexte

Vous devez développer une application console en **Dart** permettant de gérer les commandes d'un restaurant. L'application doit interagir avec l'utilisateur via le terminal, lui proposer un menu d'options et traiter ses choix jusqu'à ce qu'il décide de quitter.

## Objectifs techniques

* Manipuler les listes (`List`) et les dictionnaires (`Map`).
* Gérer les entrées utilisateur via `stdin.readLineSync()`.
* Maîtriser les structures de contrôle (`do-while`, `switch-case`).
* Implémenter une logique de calcul de prix.

---

## Fonctionnalités à implémenter

L'application doit afficher le menu suivant en boucle :

1. **Passer une commande** : Afficher la liste des produits disponibles (ex: tomate, riz) avec leurs prix respectifs. L'utilisateur saisit le nom du produit pour l'ajouter à son panier.
2. **Montant du Panier** : Calculer et afficher le montant total des articles présents dans le panier.
3. **Lister vos commandes** : Afficher tous les articles actuellement dans le panier. Si le panier est vide, l'indiquer à l'utilisateur.
4. **Lancer un bip** : Simuler une alerte sonore ou textuelle (ex: afficher `[BIP !]`).
5. **Valider votre panier** : Confirmer la commande finale et vider le panier après validation.
6. **Quitter** : Terminer le programme avec un message de remerciement.

---

## Exemple d'exécution attendu

```text
===== Menu du Restaurant =====
1. Passer une commande
2. Lister vos commandes
3. Récuperer le prix total
4. Lancer un bip
5. Valider notre panier
Quitter (ou autre touche)
Entrez votre choix : 1

Produits disponibles :
- tomate : 100.0 FCFA
- riz : 500.0 FCFA
Entrez votre commande : riz
Succès : riz ajouté au panier.

```
