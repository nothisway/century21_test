import 'dart:convert';

import 'package:century21test/app/data/model/pokedex_response.dart';
import 'package:get_storage/get_storage.dart';

class LocalRepository {
  final String boxName = "pokemon";
  final String savedPokemon = "savedPokemon";

  Future<List<PokedexResponseResults>> getPokemon() async {
    List<dynamic> myPokemon = GetStorage().read(savedPokemon);
    if (myPokemon.isNotEmpty) {
      List<PokedexResponseResults> pokebag =
          pokedexResponseResultsFromJson(jsonEncode(myPokemon));
      return pokebag;
    } else {
      return [];
    }
  }

  savePokemon(List<PokedexResponseResults> pokebag) async {
    await GetStorage().write(savedPokemon, pokebag);
  }
}
