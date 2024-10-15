class Empleado {
  final int idEmpleado;
  final int idUsuario;
  final String nombreEmpleado;
  final String? apellidoEmpleado;
  final String emailEmpleado;
  final String? telefonoEmpleado;
  final String? puesto;
  final DateTime fechaContratacion;

  Empleado({
    required this.idEmpleado,
    required this.idUsuario,
    required this.nombreEmpleado,
    this.apellidoEmpleado,
    required this.emailEmpleado,
    this.telefonoEmpleado,
    this.puesto,
    required this.fechaContratacion,
  });
}
