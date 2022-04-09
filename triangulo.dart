void main() {
  double x = 75;
  double y = 50;
  double z = 50;

  if (x < y + z || y < x + z || z < x + y) {
    print("Trata-se de um triangulo ");
  }

  if (x == y && x == z) {
    print("Trata-se de um triangulo Equilatero");
  }
  if (x == y || x == z) {
    print("Trata-se de um triangulo Isosceles");
  }
  if (x == y || y == z) {
    print("Trata-se de um triangulo Isosceles");
  } else
    print("Trata-se de um triangulo escaleno");
}
