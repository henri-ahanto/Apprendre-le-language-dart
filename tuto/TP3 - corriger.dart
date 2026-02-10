import 'dart:io';

void main() {
  List<String> commandes = []; // Liste des noms de produits commandés

  // Utilisation d'une Map simple : Nom -> Prix
  Map<String, double> produits = {"tomate": 100.0, "riz": 500.0};

  bool continu = true;

  while (continu) {
    print("\n===== Action possible =====");
    print('1. Passer une commande');
    print('2. Payer votre commande');
    print('3. Lister vos commandes');
    print('4. Lancer un bip');
    print('5. Valider notre notre panier');
    print('Quitter (ou autre touche)');
    stdout.write('Entrez votre choix : ');

    // Correction ici : on lit la ligne entière et on convertit en int
    String? input = stdin.readLineSync();
    int? action = int.tryParse(input ?? '');

    switch (action) {
      case 1:
        afficherProduits(produits);
        stdout.write("Entrez le nom du produit : ");
        String? choix = stdin.readLineSync()?.toLowerCase();

        if (choix != null && produits.containsKey(choix)) {
          commandes.add(choix);
          print("Succès : $choix ajouté au panier.");
        } else {
          print("Désolé, ce produit n'est pas en stock.");
        }
        break;

      case 2:
        if (commandes.isEmpty) {
          print("Votre panier est vide.");
        } else {
          // Calcul du total
          double total = 0;
          for (var item in commandes) {
            total += produits[item]!;
          }
          print('Le montant total à payer est de : $total FCFA');
        }
        break;

      case 3:
        afficherCommande(commandes);
        break;

      default:
        continu = false;
        print('Merci de votre visite, à bientôt !');
    }
  }
}

void afficherCommande(List<String> commandes) {
  if (commandes.isEmpty) {
    print("\nVotre panier est vide.");
  } else {
    print("\n--- Votre panier ---");
    for (var i = 0; i < commandes.length; i++) {
      print("${i + 1}. ${commandes[i]}");
    }
    print('--------------------\n');
  }
}

void afficherProduits(Map<String, double> produits) {
  print('\nProduits disponibles :');
  produits.forEach((nom, prix) {
    print("- $nom : $prix FCFA");
  });
  print('----------------------------');
}
