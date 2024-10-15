class Usuario {
  final int idUsuario;
  final String nombreUsuario;
  final String? nombreCompleto;
  final String email;
  final String? telefono;
  final String? rol;
  final DateTime fechaCreacion;
  final String passwordHash;

  Usuario({
    required this.idUsuario,
    required this.nombreUsuario,
    this.nombreCompleto,
    required this.email,
    this.telefono,
    this.rol,
    required this.fechaCreacion,
    required this.passwordHash,
  });
}
