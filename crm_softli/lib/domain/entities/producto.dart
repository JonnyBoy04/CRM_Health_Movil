class Producto {
  final int idProducto;
  final String nombreProducto;
  final String? descripcionProducto;
  final double precio;
  final int stock;
  final DateTime fechaCreacion;

  Producto({
    required this.idProducto,
    required this.nombreProducto,
    this.descripcionProducto,
    required this.precio,
    this.stock = 0,
    required this.fechaCreacion,
  });
}
