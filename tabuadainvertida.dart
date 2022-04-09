void main() {
  int n = 5;
  int a = 3;
  int b = 15;

  if (a < b)
    for (; b >= a; b--) {
      print("$n * $b = ${n * b}");
    }
  else {
    print("intervalo inválido");
  }
}
