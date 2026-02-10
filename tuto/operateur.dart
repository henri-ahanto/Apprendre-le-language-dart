
void main() {
  int a = 5;
  int b = 2;

  int somme = a + b;

  print('La valeur de la somme de $a + $b = $somme');

  int soustraction = a - b;
  print("La soustraction de $a - $b = $soustraction");

  int multiplication = a * b;
  print("La multiplication de $a * $b = $multiplication");

  /**
   * La division normale /
   * La division troncé ~/
   * La division module %
   */

  double division_normale = a / b;
  print("La division de $a / $b = $division_normale");

  int division_troncer = a ~/ b;
  print('La division troncé de $a ~/ $b = $division_troncer');

  int division_modulo = a % b;
  print("La division modulo de $a % $b = $division_modulo");

  /*----------------------------------------------------------------------*/
  int? c = 5;
  int? d = null;

  d ??= 0;

  print('La valeur de c est : $c et c\'elle de d est : $d');

  double e = 0;
  print("La valeur de e est : $e");
  e += 5; // e = e + 5
  print("La valeur de e est : $e");
  e += 2; // e = e + 2
  print("La valeur de e est : $e");
  e -= 1;
  print("La valeur de e est : $e");
  e *= 3;
  print("La valeur de e est : $e");
  e /= 2;
  print("La valeur de e est : $e");

  // Jamais on n'a e /= x sur un entier

  bool isTrue;
    isTrue = false;

  print('false && false ? $isTrue');

  print("L\'inverse de true est ${!!true}");

  // Type et test





}
