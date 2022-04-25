import 'dart:math';

void main() {
  
 final individuo = Individuo(8);
  individuo.gerar();
  
  individuo.imprimir();
  individuo.calcularDecimal();
  individuo.calcularX();
  individuo.calcularFx();
  
}

class Individuo{
  List<int>? gene = [];
  int? nbits = 0;
  int? dec = 0;
  double? x = 0;
  double? fx = 0;
  Individuo(this.nbits);
  
   
  void gerar(){
    final random = Random();
    
    for(int j = 0; j < nbits! ; j++){
      int numero = random.nextInt(2);
      gene!.add(numero);
      
    }
  }
  
  void imprimir(){
    print(gene);
  }
  void calcularDecimal(){
    String aux = "";
    for(int i = 0; i < gene!.length ; i++){
      aux = aux + gene![i].toString();     
      
    }
    dec = int.parse(aux, radix: 2);
    print(dec);

  }
  void calcularX(){
    int denominador = pow(2, nbits!).toInt() - 1;
    x = 6 * (dec! / denominador);
    print(x);
  }
  
  void calcularFx(){
    fx = pow(x!, 2).toDouble() - (5 * x!) + 6;
    print(fx);
  }
}
