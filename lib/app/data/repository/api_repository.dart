import 'dart:developer';

import 'package:century21test/app/data/model/pokedex_response.dart';
import 'package:century21test/app/utils/config.dart';
import 'package:century21test/app/utils/http_utils.dart';
import 'package:dio/dio.dart';

class ApiRepository {
  final Dio _dio = HttpUtils().init();

  Future<PokedexResponseResultsPokemonResponse> getPokemon(
      String pokemonId) async {
    try {
      Response response = await _dio.get(Config.baseUrl + "pokemon/$pokemonId");
      log(response.data.toString());
      PokedexResponseResultsPokemonResponse
          pokedexResponseResultsPokemonResponse =
          PokedexResponseResultsPokemonResponse.fromJson(response.data);
      return pokedexResponseResultsPokemonResponse;
    } catch (e) {
      rethrow;
    }
  }

  Future<PokedexResponse> getPokeDex(int pageKey) async {
    try {
      Response response = await _dio.get(Config.baseUrl + "pokemon",
          queryParameters: {'offset': pageKey, 'limit': 8});
      PokedexResponse pokedexResponse = PokedexResponse.fromJson(response.data);
      if (pokedexResponse.results != null) {
        for (var item in pokedexResponse.results!) {
          PokedexResponseResultsPokemonResponse
              pokedexResponseResultsPokemonResponse =
              await getPokemon(item!.name!);
          item.pokemonResponse = pokedexResponseResultsPokemonResponse;
        }
      }
      return pokedexResponse;
    } catch (e) {
      rethrow;
    }
  }
}
