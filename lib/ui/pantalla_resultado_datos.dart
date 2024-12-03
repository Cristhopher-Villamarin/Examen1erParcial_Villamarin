import 'package:flutter/material.dart';
import '../logica/operaciones_basicas.dart';

class Resultado extends StatelessWidget {
  final int num1;
  final int num2;
  final Operaciones resultados;

  const Resultado({
    Key? key,
    required this.num1,
    required this.num2,
    required this.resultados,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.blue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Resultados',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Operaciones entre $num1 y $num2:',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(
                      color: Colors.black26,
                      width: 1,
                    ),
                    children: [
                      _buildTableRow('Suma', resultados.suma.toString()),
                      _buildTableRow('Resta', resultados.resta.toString()),
                      _buildTableRow('Resta (invertida)', resultados.restaInvertida.toString()),
                      _buildTableRow('Producto', resultados.producto.toString()),
                      _buildTableRow(
                          'División', resultados.division.toStringAsFixed(2)),
                      _buildTableRow(
                          'División (invertida)', resultados.divisionInvertida.toStringAsFixed(2)),
                      _buildTableRow('Módulo', resultados.modulo.toString()),
                      _buildTableRow(
                          'Módulo (invertido)', resultados.moduloInvertido.toString()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                    child: const Text(
                      'Volver',
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

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
