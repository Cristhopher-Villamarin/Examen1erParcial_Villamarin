class Operaciones {
  final int suma;
  final int resta;
  final int restaInvertida;
  final int producto;
  final double division;
  final double divisionInvertida;
  final int modulo;
  final int moduloInvertido;

  Operaciones({
    required this.suma,
    required this.resta,
    required this.restaInvertida,
    required this.producto,
    required this.division,
    required this.divisionInvertida,
    required this.modulo,
    required this.moduloInvertido,
  });

  static Operaciones calcular(int x, int y) {
    return Operaciones(
      suma: x + y,
      resta: x - y,
      restaInvertida: y - x,
      producto: x * y,
      division: y != 0 ? x / y : double.infinity,
      divisionInvertida: x != 0 ? y / x : double.infinity,
      modulo: y != 0 ? x % y : 0,
      moduloInvertido: x != 0 ? y % x : 0,
    );
  }
}
