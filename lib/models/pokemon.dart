import 'dart:ui';

enum Clases { agua, fuego, planta, electrico }

const List<String> nombresClases = ['Agua', 'Fuego', 'Planta', 'Eléctrico'];

abstract class Pokemon {
  Pokemon({
    required this.nombre,
    required this.imagen,
    required this.ataque,
    required this.defensa,
    required this.color,
  });

  String nombre;
  String imagen;
  late Clases tipo;
  double ataque;
  double defensa;
  late Color color;

  double CalcularEfectividad({required Pokemon rival});

  double atacar({required Pokemon rival}) {
    return 50 * (ataque / rival.defensa) * CalcularEfectividad(rival: rival);
  }
}
