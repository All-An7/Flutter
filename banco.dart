void main() {
  Cliente c1 = Cliente("Jeovanni");
  c1.sacar(1000);
  c1.depositar(500);
  c1.transferir(500);
  print(c1);
}

class Cliente extends Conta with ContaCorrente, ContaPoupanca {
  String nome;
  Cliente(this.nome);

  void sacar(int saque) {
    print("sacando $saque");
  }

  depositar(int qtde) {
    print("depositando $qtde ");
  }

  transferir(int qt) {
    print("transferindo $qt ");
  }

  String toString() => nome;
}

abstract class Conta {
  void sacar(int saque);
}

class ContaCorrente {}

class ContaPoupanca {}
