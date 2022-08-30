import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reto_35/models/pokemon_list.dart';
import 'package:reto_35/widgets/shake_widget.dart';

import 'widgets/pokemon_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  var miPokemon = pokemons[Random().nextInt(pokemons.length)];
  var pokemonRival = pokemons[Random().nextInt(pokemons.length)];
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _miShakeKey = GlobalKey<ShakeWidgetState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: _messengerKey,
        title: 'Reto #35 - Batalla Pokemon',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Reto #35 - Batalla Pokémon'),
          ),
          body: Center(
            child: SingleChildScrollView(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ShakeWidget(
                    key: _miShakeKey,
                    shakeOffset: 100,
                    shakeCount: 1,
                    inverted: -1,
                    shakeDuration: const Duration(milliseconds: 1500),
                    child: PokemonCard(pokeCard: miPokemon)),
                const SizedBox(
                  width: 80,
                ),
                ShakeWidget(
                    key: _shakeKey,
                    shakeOffset: 10,
                    shakeCount: 4,
                    shakeDuration: const Duration(milliseconds: 500),
                    child: PokemonCard(pokeCard: pokemonRival)),
              ]),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  _messengerKey.currentState
                      ?.hideCurrentSnackBar(reason: SnackBarClosedReason.hide);
                  miPokemon = pokemons[Random().nextInt(pokemons.length)];
                  pokemonRival = pokemons[Random().nextInt(pokemons.length)];
                  setState(() {});
                },
                child: const Icon(Icons.refresh),
              ),
              const SizedBox(width: 32),
              FloatingActionButton(
                onPressed: () {
                  final resultadoAtaque = miPokemon.atacar(rival: pokemonRival);
                  final formatter = NumberFormat('###');

                  _miShakeKey.currentState?.shake();
                  _messengerKey.currentState?.hideCurrentSnackBar(
                      reason: SnackBarClosedReason.dismiss);

                  Future.delayed(const Duration(seconds: 1), () {
                    // Shake
                    _shakeKey.currentState?.shake();
                    // Display Snackbar
                    _messengerKey.currentState?.showSnackBar(SnackBar(
                        duration: const Duration(milliseconds: 800),
                        content: Text(
                            '${miPokemon.nombre} atacó a ${pokemonRival.nombre} y le hizo ${formatter.format(resultadoAtaque)} puntos de daño.')));
                  });
                },
                child: const Text('Atacar'),
              ),
            ],
          ),
        ));
  }
}
