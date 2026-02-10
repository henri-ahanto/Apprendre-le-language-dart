void main() {

  int a = 1;

  // ignore: dead_code
  while (false){
    print(a);
    a++;
  }

  print('\n\n/*************************************************\\');


  /**
    do while execute la boucle avant de faire la vérification
   */

  a = 1;
   do {
    print(a);
    a++;
   }while(false);
}