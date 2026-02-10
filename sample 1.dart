void main(){
  int score  = 49;

  /**
    > : 
    >= : valeur de gauche sup ou eg droite
    <= : 
   **/

  if (score >= 50) {
    print('Réussite');
  } else {
    print('Échec');
  }


  /// Exemple avec l'opérateur

  (score >= 50) ? print("C'est vrai") : print("C'est faux");

}