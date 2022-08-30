import 'package:reto_35/models/pokemon.dart';

/*  Planta: vs Agua (2)  | vs Fuego (0.5) | vs Eléctrico (1) | vs Planta (0.5) */
class PokemonPlanta extends Pokemon {
  PokemonPlanta(
      {required super.nombre,
      required super.imagen,
      required super.ataque,
      required super.defensa,
      required super.color}) {
    tipo = Clases.planta;
  }

  @override
  double CalcularEfectividad({required Pokemon rival}) {
    if (rival.tipo == Clases.planta) return 0.5;
    if (rival.tipo == Clases.fuego) return 0.5;
    if (rival.tipo == Clases.agua) return 2;

    //if (rival.tipo == Clases.electrico);
    return 1;
  }
}
