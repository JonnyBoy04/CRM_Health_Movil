class Servicio {
  final int idServicio;
  final String nombreServicio;
  final String? descripcionServicio;
  final double precio;
  final bool recurrente;
  final String frecuenciaRecurrencia;
  final DateTime fechaCreacion;

  Servicio({
    required this.idServicio,
    required this.nombreServicio,
    this.descripcionServicio,
    required this.precio,
    this.recurrente = false,
    this.frecuenciaRecurrencia = 'Mensual',
    required this.fechaCreacion,
  });
}
