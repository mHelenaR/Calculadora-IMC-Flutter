void main() {
  Golfinho().locomocao();
  Morcego().locomocao();
  Gato().locomocao();
  Gaivota().locomocao();
  Pato().locomocao();
  Tubarao().locomocao();
  PeixeVoador().locomocao();
}

//classe pai
class Animal {}

//classe herdada
class Mamifero extends Animal {}

// classe herdada com mixin
class Passaro extends Animal with Voar {}

class Peixe extends Animal with Nadar {}

class Golfinho extends Mamifero with Nadar {
  void locomocao() => print("${this.runtimeType} ${nadar()}");
}

class Morcego extends Mamifero with Andar, Voar {
  void locomocao() => print("${this.runtimeType} ${andar()} e ${voar()}");
}

class Gato extends Mamifero with Andar {
  void locomocao() => print("${this.runtimeType} ${andar()}");
}

class Gaivota extends Passaro with Andar {
  void locomocao() => print("${this.runtimeType} ${andar()}");
}

class Tubarao extends Peixe {
  void locomocao() => print("${this.runtimeType} ${nadar()}");
}

class PeixeVoador extends Peixe with Voar {
  void locomocao() => print("${this.runtimeType} ${voar()} ${nadar()}");
}

//classe herdada com multiplios
class Pato extends Passaro with Andar, Nadar {
  void locomocao() => print("${this.runtimeType} ${andar()} ${voar()} ${nadar()}");
}

mixin Andar on Animal {
  String andar() => "está andado";
}

mixin Nadar on Animal {
  String nadar() => "está nadando";
}

mixin Voar on Animal {
  String voar() => "está voando";
}
