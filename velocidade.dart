void main() {
  /*10. A partir dos valores da aceleração (a em m/s2), da velocidade inicial
   * (v0 em m/s) e do tempo de percurso (t em s). Calcular e exibir a 
   * velocidade final de automóvel em km/h. Exibir mensagem de acordo com a
   tabela:
   * */
  
  double t = 20;
  double a = 2;
  double v0 = 10;
  double v = v0 + a * t;
  

  
  if (v <= 40) 
   print("veículo muito lento, sua velocidade atual é $v");

  else if(40 < v <= 60)
    
    print("velocidade permitida, sua velocidade atual é $v");
  
  else if(60 < v <= 80)
    
    print("velocidade de cruzeiro, sua velocidade atual é $v");
  
  else if (80 < v <=120)
    
    print("veículo rápido, sua velocidade atual é $v");
  
  else if (v > 120)
    
    print("veículo muito rápido, sua velocidade atual é $v");
  
  }