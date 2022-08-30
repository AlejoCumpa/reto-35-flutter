import 'package:reto_35/models/pokemon.dart';

/*  Eléctrico: vs Agua (2)  | vs Fuego (1) | vs Eléctrico (0.5) | vs Planta (0.5) */
class PokemonElectrico extends Pokemon {
  PokemonElectrico(
      {required super.nombre,
      required super.imagen,
      required super.ataque,
      required super.defensa,
      required super.color}) {
    tipo = Clases.electrico;
  }

  @override
  double CalcularEfectividad({required Pokemon rival}) {
    if (rival.tipo == Clases.electrico) return 0.5;
    if (rival.tipo == Clases.planta) return 0.5;
    if (rival.tipo == Clases.agua) return 2;

    //if (rival.tipo == Clases.fuego);
    return 1;
  }
}
