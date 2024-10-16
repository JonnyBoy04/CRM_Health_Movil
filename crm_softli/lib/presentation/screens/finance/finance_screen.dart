import 'package:flutter/material.dart';

// Clase para representar una venta
class Venta {
  final double total;
  final double impuestos; // Campo para los impuestos
  final DateTime fecha;

  Venta({required this.total, required this.impuestos, required this.fecha});
}

// Lista de ventas de ejemplo con impuestos
List<Venta> ventas = [
  Venta(
      total: 500.00,
      impuestos: 50.00,
      fecha: DateTime.now().subtract(const Duration(days: 1))),
  Venta(
      total: 1000.50,
      impuestos: 100.50,
      fecha: DateTime.now().subtract(const Duration(days: 3))),
  Venta(
      total: 750.75,
      impuestos: 75.75,
      fecha: DateTime.now().subtract(const Duration(days: 5))),
];

// Función para calcular el total de impuestos
double calcularTotalImpuestos() {
  double totalImpuestos = 0.0;
  for (var venta in ventas) {
    totalImpuestos += venta.impuestos;
  }
  return totalImpuestos;
}

// Función para calcular el total de ventas
double calcularTotalVentas() {
  double total = 0.0;
  for (var venta in ventas) {
    total += venta.total;
  }
  return total;
}

class FinanzasScreen extends StatelessWidget {
  const FinanzasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double totalVentas = calcularTotalVentas();
    double totalImpuestos = calcularTotalImpuestos();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finanzas'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Total de Ventas'),
              subtitle: Text('\$$totalVentas'),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Impuestos Calculados'),
              subtitle: Text('\$$totalImpuestos'),
            ),
          ),
          // Aquí puedes añadir un gráfico con `fl_chart`
        ],
      ),
    );
  }
}
