class Cliente {
  final int idCliente;
  final String nombre;
  final String? apellido;
  final String email;
  final String? telefono;
  final String? direccion;
  final String? ciudad;
  final String? pais;
  final DateTime fechaRegistro;

  Cliente({
    required this.idCliente,
    required this.nombre,
    this.apellido,
    required this.email,
    this.telefono,
    this.direccion,
    this.ciudad,
    this.pais,
    required this.fechaRegistro,
  });
}
