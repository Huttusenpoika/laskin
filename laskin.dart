import 'dart:io';

main(){
  
  while (true) {
    var number1 = kysyLuku();
    if (number1 == null) break;
    var number2 = kysyLuku();
    if (number2 == null) break;
    var operaatiotulos = kysyOperaatio();
    if (operaatiotulos.contains("s")) break;
    tulos(number1, number2, operaatiotulos);
    print("Lasku suoritettu. lopettaaksesi paina numeron kohdalla K tai operaation kohdalla S.");
    
  }
}



double kysyLuku() {
  var number;
  while (true) {
    print("Syötä luku : ");
    String rivi = stdin.readLineSync();
    if (rivi.contains("k")) return null;
    number = double.tryParse(rivi);
    if (number == null) print("Virhe: Ei kirjaimia laskuihin");
    else break;
  }
  return number;
}

String kysyOperaatio() {
  print("Valitse operaatio (- + / * ^2 ^3 (HUOM ^ ottaa vain ensimmäisen numeron huomioon!)) : ");
  String operaatio = stdin.readLineSync();
  return operaatio;
}

void tulos(double num1, double num2, String operaatio) {
  if (operaatio.contains("+")) print("$num1 + $num2 = ${num1 + num2}");
  if (operaatio.contains("-")) print("$num1 - $num2 = ${num1 - num2}");
  if (operaatio.contains("/")) print("$num1 / $num2 = ${num1 / num2}");
  if (operaatio.contains("*")) print("$num1 * $num2 = ${num1 * num2}");
  if (operaatio.contains("^2")) print("$num1 ^2 = ${num1 * num1}");
  if (operaatio.contains("^3")) print("$num1 ^3 = ${num1 * num1 * num1}");
}