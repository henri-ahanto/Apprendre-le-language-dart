import 'dart:io';

void main(){
  stdout.write("Entrez le lieu : ");

  /// readLineSync permet de lire au clavier mais un String? et non String
  String? nomLieu = stdin.readLineSync();

  switch(nomLieu){
    case 'BIO GUERRA':
      print("Ville : Parakou");
      break;
    default:
      print("Ville inconnue");
  }
}