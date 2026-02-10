void main() {
  Personne personne1 = Personne(1, 30, "Henri", "Male");
  Personne.existant_ids.add(3);
  Personne personne2 = Personne(2, 25, "Marie", "Female");

  Personne personne3 = Personne.fromJson({
    'id': 3,
    'nom': "koffi",
    'age': 15,
    'sexe': 'Male',
  });
  // personne3.id = 3; x Interdit parce c'est un attribut final
  personne3.nom = "Cocou";

  personne1.afficherInformations();
  personne2.afficherInformations();
  personne3.afficherInformations();
}

class Personne {
  static List<int> existant_ids = [1, 2];
  final int? id;
  int? age;
  String? nom;
  String? sexe;

  /*
   * Personnne(int id, int age, String nom, String sexe){
          this.id = id;
          this.age = age;
          this.nom = nom;
          this.sexe = sexe;
   }
   * 
   * */

  /*
  Personne({
    required this.id,
    this.age = 18,
    this.sexe = "Male",
    required this.nom,
  });
  */

  factory Personne(int id, int age, String nom, String sexe) {
    if (existant_ids.contains(id)) {
      print('L\'utilisateur avec l\'id $id a été overrider');
      return Personne._internal(id, nom, age, sexe);
    }
    return Personne._internal(id, nom, age, sexe);
  }

  Personne._internal(this.id, this.nom, this.age, this.sexe);

  factory Personne.fromJson(Map<String, dynamic> json) {
    return Personne(json['id']!, json['age']!, json['nom']!, json['sexe']);
  }

  void afficherInformations() {
    print('Informations personnel ');
    print('Nom de la personne : $nom');
    print('ID : $id');
    print('Age : $age');
    print('Sexe : $sexe');
    print('');
  }
}
