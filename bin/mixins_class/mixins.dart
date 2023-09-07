abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

//nuevo midificador de clase: mixin
//clases que definen el comportamiento de las clases que heredan de Animal
mixin Volador {
  void volar() => print('estoy volando');
}

mixin Caminante {
  void caminar() => print('estoy caminando');
}

mixin Nadador {
  void nadar() => print('estoy nadando');
}
//los mixins son un concepto poderoso que le permite reutilizar código en múltiples jerarquías de clases.

//Obj hereda de Mamifero y Nadador
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main(){
  final flipper = Delfin();
  flipper.nadar();
  final batman = Murcielago();
  batman.volar();
  batman.caminar();

  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}