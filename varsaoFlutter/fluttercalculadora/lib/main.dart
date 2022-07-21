// ignore_for_file: deprecated_member_use, sized_box_for_whitespace, body_might_complete_normally_nullable, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _info = "Informe seus dados.";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  void _resetFields() {
    pesoController.text = '';
    alturaController.text = '';
    setState(
      () {
        _info = "Informe seus dados.";
        _formKey = GlobalKey<FormState>();
      },
    );
  }

  void _calcular() {
    setState(
      () {
        double peso = double.parse(pesoController.text);
        double altura = double.parse(alturaController.text);
        double imc = peso / (altura * altura);

        print(imc);

        if (imc < 16) {
          _info = ('Magreza grave! Imc: ${imc.toStringAsPrecision(3)}');
        } else if (imc < 17) {
          _info = ('Magreza moderada! Imc: ${imc.toStringAsPrecision(3)}');
        } else if (imc < 18.5) {
          _info = ('Magreza leve! Imc: ${imc.toStringAsPrecision(3)}');
        } else if (imc < 25) {
          _info = ('Saudável! Imc: ${imc.toStringAsPrecision(3)}');
        } else if (imc < 30) {
          _info = ('Sobrepeso! Imc: ${imc.toStringAsPrecision(3)}');
        } else if (imc < 35) {
          _info = ('Obesidade – GRAU I! Imc: ${imc.toStringAsPrecision(3)}');
        } else if (imc < 40) {
          _info = ('Obesidade – GRAU II | Severa! Imc: ${imc.toStringAsPrecision(3)}');
        } else {
          _info = ('Obesidade – GRAU III | Mórbida! Imc: ${imc.toStringAsPrecision(3)}');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calcula IMC"),
        centerTitle: true,
        backgroundColor: const Color(0XFF673AB7),
        actions: <Widget>[IconButton(icon: const Icon(Icons.refresh), onPressed: _resetFields)],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(Icons.person_outline, size: 120.0, color: Color(0xFF5F5FA7)),
              Container(
                height: 40,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: 'Peso',
                  ),
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  controller: pesoController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Insira seu Peso!";
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.height),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: 'Altura',
                  ),
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Color(0XFF673AB7), fontSize: 20),
                  controller: alturaController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Insira sua Altura!";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0XFF673AB7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _calcular();
                      }
                    },
                    child: const Text(
                      'Calcular',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
              ),
              Text(
                _info,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Color(0XFF673AB7), fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
