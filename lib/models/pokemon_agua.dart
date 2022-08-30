import 'package:reto_35/models/pokemon.dart';

/*  Agua: vs Agua (0.5)  | vs Fuego (0.5) | vs Eléctrico (0.5) | vs Planta (1)*/
class PokemonAgua extends Pokemon {
  PokemonAgua(
      {required super.nombre,
      required super.imagen,
      required super.ataque,
      required super.defensa,
      required super.color}) {
    tipo = Clases.agua;
  }

  @override
  double CalcularEfectividad({required Pokemon rival}) {
    if (rival.tipo == Clases.agua) return 0.5;
    if (rival.tipo == Clases.fuego) return 0.5;
    if (rival.tipo == Clases.electrico) return 2;

    //if (rival.tipo == Clases.planta);
    return 1;
  }
}
