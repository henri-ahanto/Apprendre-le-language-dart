void main(){


  List fruits = ["tomate", "pomme"];
  // ' "
  for (var i = 0; i < 3; i++) {
    print('Itération \' $i'+" fin");
  }

  for (var fruit in fruits) {
    print('Je mange : $fruit');
  }


}