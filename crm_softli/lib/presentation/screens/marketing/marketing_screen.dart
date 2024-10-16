import 'package:flutter/material.dart';

class Usuario {
  final int id;
  final String nombre;
  final String rol;
  final String email;

  Usuario(
      {required this.id,
      required this.nombre,
      required this.rol,
      required this.email});
}

// Lista de usuarios de ejemplo
List<Usuario> usuarios = [
  Usuario(
      id: 1,
      nombre: 'Carlos Díaz',
      rol: 'Vendedor',
      email: 'carlos.diaz@example.com'),
  Usuario(
      id: 2,
      nombre: 'Sofía Reyes',
      rol: 'Marketing',
      email: 'sofia.reyes@example.com'),
  Usuario(
      id: 3,
      nombre: 'María López',
      rol: 'Admin',
      email: 'maria.lopez@example.com'),
];

class MarketingScreen extends StatelessWidget {
  const MarketingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketing'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Actividad de Marketing'),
              ),
              DropdownButtonFormField(
                items: usuarios.map((usuario) {
                  return DropdownMenuItem(
                    value: usuario.id,
                    child: Text(usuario.nombre),
                  );
                }).toList(),
                onChanged: (value) {
                  // Asignar usuario
                },
                decoration:
                    const InputDecoration(labelText: 'Asignar a Usuario'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Guardar actividad
                },
                child: const Text('Guardar Actividad'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
