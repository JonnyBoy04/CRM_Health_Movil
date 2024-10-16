import 'package:flutter/material.dart';

class Actividad {
  final String nombre;
  final String descripcion;
  final DateTime fecha;

  Actividad(
      {required this.nombre, required this.descripcion, required this.fecha});
}

// Lista de actividades de ejemplo
List<Actividad> actividades = [
  Actividad(
      nombre: 'Llamar a cliente',
      descripcion: 'Contactar al cliente para seguimiento.',
      fecha: DateTime.now().add(const Duration(days: 1))),
  Actividad(
      nombre: 'Reunión de proyecto',
      descripcion: 'Reunión con el equipo para planificar el proyecto.',
      fecha: DateTime.now().add(const Duration(days: 2))),
  Actividad(
      nombre: 'Enviar cotización',
      descripcion: 'Enviar la cotización al cliente.',
      fecha: DateTime.now().add(const Duration(days: 3))),
];

class PlanificacionScreen extends StatelessWidget {
  const PlanificacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planificación de Actividades'),
      ),
      body: ListView.builder(
        itemCount: actividades.length, // Lista de actividades
        itemBuilder: (context, index) {
          final actividad = actividades[index];
          return ListTile(
            title: Text(actividad.nombre),
            subtitle: Text('Fecha: ${actividad.fecha}'),
            onTap: () {
              // Ver detalles de la actividad
            },
          );
        },
      ),
    );
  }
}
