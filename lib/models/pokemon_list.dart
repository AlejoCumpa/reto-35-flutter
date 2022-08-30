import 'package:flutter/material.dart';

import 'pokemon.dart';
import 'pokemon_electrico.dart';
import 'pokemon_agua.dart';
import 'pokemon_planta.dart';
import 'pokemon_fuego.dart';

final pokemons = <Pokemon>[
  PokemonElectrico(
      nombre: 'Pikachu',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/7/77/Pikachu.png/revision/latest?cb=20150621181250',
      ataque: 112,
      defensa: 96,
      color: Colors.amber),
  PokemonPlanta(
      nombre: 'Venusaur',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/b/be/Venusaur.png/revision/latest/scale-to-width-down/350?cb=20160309230456',
      ataque: 198,
      defensa: 189,
      color: Colors.green),
  PokemonFuego(
      nombre: 'Charizard',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/9/95/Charizard.png/revision/latest/scale-to-width-down/350?cb=20180325003352',
      ataque: 223,
      defensa: 173,
      color: Colors.orangeAccent),
  PokemonAgua(
      nombre: 'Squirtle',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/e/e3/Squirtle.png/revision/latest/scale-to-width-down/350?cb=20160309230820',
      ataque: 94,
      defensa: 121,
      color: Colors.lightBlue),
  PokemonElectrico(
      nombre: 'Voltorb',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/8/80/Voltorb.png/revision/latest?cb=20090916184937',
      ataque: 109,
      defensa: 111,
      color: Colors.red),
  PokemonElectrico(
      nombre: 'Electabuzz',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/3/3a/Electabuzz.png/revision/latest?cb=20080908162703',
      ataque: 198,
      defensa: 173,
      color: Colors.amberAccent),
  PokemonElectrico(
      nombre: 'Jolteon',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/1/1e/Jolteon.png/revision/latest/scale-to-width-down/350?cb=20220527102859',
      ataque: 232,
      defensa: 201,
      color: Colors.grey),
  PokemonPlanta(
      nombre: 'Ivysaur',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/8/86/Ivysaur.png/revision/latest?cb=20140207202404',
      ataque: 151,
      defensa: 143,
      color: Colors.greenAccent),
  PokemonPlanta(
      nombre: 'Bulbasaur',
      imagen:
          'https://static.wikia.nocookie.net/espokemon/images/4/43/Bulbasaur.png/revision/latest/scale-to-width-down/350?cb=20170120032346',
      ataque: 118,
      defensa: 111,
      color: Colors.lightGreen),
];
