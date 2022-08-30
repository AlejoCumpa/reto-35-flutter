import 'package:reto_35/models/pokemon.dart';

/*  Fuego: vs Agua (0.5)  | vs Fuego (0.5) | vs Eléctrico (1) | vs Planta (2) */
class PokemonFuego extends Pokemon {
  PokemonFuego(
      {required super.nombre,
      required super.imagen,
      required super.ataque,
      required super.defensa,
      required super.color}) {
    tipo = Clases.fuego;
  }

  @override
  double CalcularEfectividad({required Pokemon rival}) {
    if (rival.tipo == Clases.fuego) return 0.5;
    if (rival.tipo == Clases.agua) return 0.5;
    if (rival.tipo == Clases.planta) return 2;

    //if (rival.tipo == Clases.electrico);
    return 1;
  }
}
