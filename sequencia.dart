void main() {
  /*15. Calcular e exibir a soma dos “N” primeiros valores da seqüência
   *  abaixo. O valor “N” será digitado, deverá ser positivo, mas menor 
   * que cem. Caso o valor não satisfaça a restrição, enviar mensagem de
   *  erro e solicitar o valor novamente.
A seqüência: 2, 5, 10, 17, 26, ....
*/

  int n = 12;
  int a = 2;
  int x = 3;

  if (n > 0 && n <= 100)
    for (int c = 1; c <= n; c++) {
      print("$a");
      a = a + x;
      x = x + 2;
    }
}
