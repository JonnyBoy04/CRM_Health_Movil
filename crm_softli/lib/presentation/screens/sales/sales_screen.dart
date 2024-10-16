import 'package:flutter/material.dart';

class Cotizacion {
  final String cliente;
  final String estado;
  final double total;

  Cotizacion(
      {required this.cliente, required this.estado, required this.total});
}

// Lista de cotizaciones de ejemplo
List<Cotizacion> cotizaciones = [
  Cotizacion(cliente: 'Juan Pérez', estado: 'Pendiente', total: 1500.00),
  Cotizacion(cliente: 'Ana García', estado: 'Aprobada', total: 2300.50),
  Cotizacion(cliente: 'Luis Martínez', estado: 'Rechazada', total: 900.75),
];

class VentasScreen extends StatelessWidget {
  const VentasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventas - Cotizaciones'),
      ),
      body: ListView.builder(
        itemCount: cotizaciones.length, // Lista de cotizaciones
        itemBuilder: (context, index) {
          final cotizacion = cotizaciones[index];
          return Card(
            child: ListTile(
              title: Text('Cotización #${cotizacion.cliente}'),
              subtitle: Text('Total: \$${cotizacion.total}'),
              onTap: () {
                // Ver detalles de la cotización
              },
              trailing: const Icon(Icons.more_vert),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Crear nueva cotización
        },
      ),
    );
  }
}
