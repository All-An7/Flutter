void main() {
  double peso = 75;
  double altura = 1.84;
  double alt = altura * altura;
  double ideal = (peso / alt);

  if (18.5 < ideal && ideal < 24.9)
    print("peso ideal");
  else
    print("fora do peso");
}
