void main() {
  var recebe = Pessoa();

  recebe.alturaSet = 0.1;

  print(recebe.alturaGet);
}

class Pessoa {
  int? _idade;
  double _altura = 0;

  int get idade {
    return _idade ?? 0;
  }

  get idadeNum => _idade;

  double get alturaGet {
    return _altura;
  }

  set alturaSet(double altura) {
    if (altura > 0.0 && altura < 3.0) {
      _altura = altura;
    }
  }
}
