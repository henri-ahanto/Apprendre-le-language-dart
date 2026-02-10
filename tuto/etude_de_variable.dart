void main() {
  /** 
   * Une variable ne peut pas contenir d'espace
   * Une variable avec (é ou compagine jamais)
   * Ne commmence jamais par un chiffre.
   * 
   * 
   * Les regles à suivre pour créer une variable
   * - Identifier le type et utiliser la déclaration typé
   * - Utiliser le mot clé var lors de la déclaration pour aller vite
   * - Si votre variable est une constante universelle utiliser de const 
   * - Si c'est une constante dont la valeur n'est connu utiliser final
   * - Si il change fréquemment utiliser dynamic
  */

  String nom_de_la_personne = "";
  nom_de_la_personne = "Henri";

  print(nom_de_la_personne);

  var une_variable_a = 56.5;

  une_variable_a = 17;

  print(une_variable_a);

  // une_variable_a = true; (non)

  // final ou const
  final date = DateTime.now();
  // date = DateTime.now();

  print(date);

  const PI = 3.1415;
  // PI = 4.13;

  print("La valeur de PI est : $PI");

  /**
   * dynamic 
   */

  dynamic var_dynamic = 100;

  print('La valeur de notre variable dynamic est  : $var_dynamic');

  var_dynamic = "Chaine de caractère";
  print('La valeur de notre variable dynamic est  : $var_dynamic');
}
