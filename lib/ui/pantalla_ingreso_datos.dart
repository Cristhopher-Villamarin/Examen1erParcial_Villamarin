import 'package:flutter/material.dart';
import '../logica/operaciones_basicas.dart';
import 'pantalla_resultado_datos.dart';

class IngresoDatos extends StatefulWidget {
  const IngresoDatos({Key? key}) : super(key: key);

  @override
  _IngresoDatosState createState() => _IngresoDatosState();
}

class _IngresoDatosState extends State<IngresoDatos> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.blue, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Operaciones Básicas',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/operaciones.png',
                    height: 150,
                  ),
                  const SizedBox(height: 20),
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Número 1:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _num1Controller,
                              decoration: const InputDecoration(
                                labelText: 'Dame un número entero',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Número 2:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _num2Controller,
                              decoration: const InputDecoration(
                                labelText: 'Dame otro número entero',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      final int num1 = int.parse(_num1Controller.text);
                      final int num2 = int.parse(_num2Controller.text);

                      final Operaciones resultados = Operaciones.calcular(num1, num2);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Resultado(
                            num1: num1,
                            num2: num2,
                            resultados: resultados,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                    child: const Text(
                      'Calcular',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
