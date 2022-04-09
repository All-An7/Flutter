void main() {
  /*13. Exibir os trinta primeiros valores da série de Fibonacci. 
   * A série: 1, 1, 2, 3, 5, 8, ...

*/

  int a = -1;
  int b = 1;
  int c;

  for (int f = 1; f <= 30; f++) {
    c = a + b;
    a = b;
    b = c;

    print("$c");
  }
}
