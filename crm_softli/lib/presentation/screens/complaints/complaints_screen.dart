import 'package:flutter/material.dart';

class Queja {
  final int id;
  final String tipo;
  final String descripcion;
  final String estado;

  Queja(
      {required this.id,
      required this.tipo,
      required this.descripcion,
      required this.estado});
}

// Lista de quejas y reclamos de ejemplo
List<Queja> quejas = [
  Queja(
      id: 1,
      tipo: 'Queja',
      descripcion: 'El servicio fue tardío.',
      estado: 'Pendiente'),
  Queja(
      id: 2,
      tipo: 'Sugerencia',
      descripcion: 'Sería útil una aplicación móvil.',
      estado: 'Resuelta'),
  Queja(
      id: 3,
      tipo: 'Queja',
      descripcion: 'El producto llegó dañado.',
      estado: 'En progreso'),
];

class QuejasScreen extends StatelessWidget {
  const QuejasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quejas y Sugerencias'),
      ),
      body: ListView.builder(
        itemCount: quejas.length, // Lista de quejas/sugerencias
        itemBuilder: (context, index) {
          final queja = quejas[index];
          return Card(
            child: ListTile(
              title: Text('Queja/Sugerencia #${queja.id}'),
              subtitle: Text('Estado: ${queja.estado}'),
              onTap: () {
                // Ver detalles y gestionar
              },
            ),
          );
        },
      ),
    );
  }
}
