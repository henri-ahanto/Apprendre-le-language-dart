import 'dart:io';

void main() {
  Map<String, double> Produits = {'tomate': 100.0, 'pain': 200.0};

  List<String> Commandes = [];

  bool continu = true;
  while (continu) {
    afficherMenu();
    int choix = lireEntier("Entrez un choix : ");
    print(choix);
    if (choix <= 5 && choix >= 1) {
      print('Lancement....');
      switch (choix) {
        case 1:
          passerCommande(Commandes, Produits);
          break;
        case 2:
          listerCommande(Commandes, Produits);
          break;
        case 3:
          prixTotalCommande(Commandes, Produits);
          break;
        case 4:
          lancerBip();
          break;
        case 5:
          validerPanier(Commandes);
          break;
      }
    } else {
      print("Sortir du programme");
      continu = false;
    }
  }
}

/*object
  type mon(type argument){
    return type
  }
*/

void afficherMenu() {
  print("===== Menu du Restaurant =====");
  print('1. Passer une commande');
  print('2. Lister vos commandes');
  print('3. Récuperer le prix total');
  print('4. Lancer un bip');
  print('5. Valider notre panier');
  print('Entrez un autre caractère pour quitter');
  print("");
}

int lireEntier(String message) {
  var input = null;
  int? entier = null;

  while (input == null) {
    stdout.write(message);
    input = stdin.readLineSync()?.toLowerCase();

    entier = int.tryParse(input);
    if (entier == null) {
      input = null;
    }
  }

  return entier!;
}

String lirePhrase(String message) {
  var input = null;

  while (input == null) {
    stdout.write(message);
    input = stdin.readLineSync()?.toLowerCase();
  }
  return input!;
}

void listerProduits(Map<String, double> Produits) {
  print(
    "\n\n\n########################\n# Produit  : Prix\n########################\n",
  );
  Produits.forEach((produit, prix) {
    print(" - ${produit.toUpperCase()} : $prix FCFA ");
  });
  print('\n');
}

void passerCommande(List<String> Commandes, Map<String, double> Produits) {
  while (true) {
    listerProduits(Produits);
    String nouveauProduit = lirePhrase("Entrez votre produit: ");
    if (Produits.containsKey(nouveauProduit)) {
      Commandes.add(nouveauProduit);
      print('\nProduits ajouter avec succès\n\n\n');
      break;
    } else {
      print("Le produit $nouveauProduit n'existe pas");
    }
  }
}

void listerCommande(List<String> Commandes, Map<String, double> Produits) {
  if (Commandes.isEmpty) {
    print('\n\n\n=====================================================\n');
    print("Vous n'avez pas encore passer de commande");
    print('\n=====================================================\n');
  } else {
    print('\n\n\n\n=========== Liste des produits commander ===========\n');
    Commandes.forEach((commande) {
      print(' - $commande : ${Produits[commande]}');
    });

    print('\n\n\n=====================================================\n');
  }
}

void prixTotalCommande(List<String> Commandes, Map<String, double> Produits) {
  if (Commandes.isEmpty) {
    print('=================== COMMANDE ====================');
    print("Ajouter des produits à votre panier");
    print('=================== COMMANDE ====================');
  } else {
    print('=================== COMMANDE ====================');
    double total = 0.0;
    Commandes.forEach((commande) {
      total += Produits[commande]!;
    });
    print('Le prix total de vos commandes est de $total');

    print('=================== COMMANDE ====================');
  }
}

void lancerBip() {
  print('\n\n\n\nBiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiip\n\n\n');
}

void validerPanier(List<String> Commandes) {
  print('================ Validation de commande ================');
  if (Commandes.isEmpty) {
    print("Votre liste de commande est vide");
  } else {
    String rep = lirePhrase(
      'Êtes vous sur de vouloir valider la commande ? (o/n)',
    );
    if (rep.toLowerCase().startsWith('o')) {
      Commandes.clear();
      print("Le panier à été effacer avec succès");
    } else {
      print("Annulation de l'opération");
    }
  }
  print('================ Validation de commande ================');
}
