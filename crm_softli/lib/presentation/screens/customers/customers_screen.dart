import 'package:flutter/material.dart';

class Cliente {
  final String nombre;
  final String apellido;
  final String email;

  Cliente({required this.nombre, required this.apellido, required this.email});
}

// Lista de clientes de ejemplo
List<Cliente> clientes = [
  Cliente(nombre: 'Juan', apellido: 'Pérez', email: 'juan.perez@example.com'),
  Cliente(nombre: 'Ana', apellido: 'García', email: 'ana.garcia@example.com'),
  Cliente(
      nombre: 'Luis', apellido: 'Martínez', email: 'luis.martinez@example.com'),
];


class ClientesScreen extends StatelessWidget {
  const ClientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: ListView.builder(
        itemCount: clientes.length, // Lista de clientes
        itemBuilder: (context, index) {
          final cliente = clientes[index];
          return Card(
            child: ListTile(
              title: Text('${cliente.nombre} ${cliente.apellido}'),
              subtitle: Text('Email: ${cliente.email}'),
              onTap: () {
                // Ver detalles del cliente
              },
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Editar cliente
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Agregar nuevo cliente
        },
      ),
    );
  }
}
