enum AccessLevel {
  // 1. Définition des instances avec leurs arguments
  guest(0, "Invité"),
  user(1, "Utilisateur Standard"),
  admin(2, "Administrateur Système");

  // 2. Champs (Propriétés)
  final int power;
  final String label;

  // 3. Constructeur constant (obligatoire pour les enums)
  const AccessLevel(this.power, this.label);

  // 4. Getters et Méthodes (Logique métier)
  bool get canDelete => this == AccessLevel.admin;
  bool get canCreate => this.power >= 1;

  void printInfo() {
    print("Rôle: $label (Niveau de puissance: $power)");
  }
}

class Person {
  final int id;
  final String name;
  final AccessLevel role;

  Person(this.id, this.name, this.role);

  // Opération de suppression (Delete) sécurisée
  void deleteData() {
    if (role.canDelete) {
      print(
        "Suppression permanente de l'ID $id effectuée par un ${role.label}.",
      );
    } else {
      print("Erreur : L'accès '${role.label}' est insuffisant pour supprimer.");
    }
  }

  void canCreate() {
    if (role.canCreate) {
      print("L'utilisateur peut créer");
    } else {
      print("L'utilisateur ne peut pas créer");
    }
  }
}

void main() {
  var p1 = Person(1, "Alice", AccessLevel.guest);
  var p2 = Person(2, "Bob", AccessLevel.admin);

  p1.deleteData(); // Affiche : Erreur...
  p2.deleteData(); // Affiche : Suppression permanente...

  p1.canCreate();

  AccessLevel.guest.printInfo();
}
