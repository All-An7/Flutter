void main() {
  /*14. Exibir os vinte primeiros valores da série de Bergamaschi.
   *  A série: 1, 1, 1, 3, 5, 9, 17, ...
*/

  int a = -1;
  int b = 1;
  int c = 1;
  int d;

  print("1");
  print("1"); /*  \o/  */

  for (int f = 1; f <= 20; f++) {
    d = a + b + c;
    a = b;
    b = c;
    c = d;

    print("$c");
  }
}
