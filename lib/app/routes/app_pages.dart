import 'package:get/get.dart';

import 'package:century21test/app/modules/detail_pokemon/bindings/detail_pokemon_binding.dart';
import 'package:century21test/app/modules/detail_pokemon/views/detail_pokemon_view.dart';
import 'package:century21test/app/modules/home/bindings/home_binding.dart';
import 'package:century21test/app/modules/home/views/home_view.dart';
import 'package:century21test/app/modules/pokebag/bindings/pokebag_binding.dart';
import 'package:century21test/app/modules/pokebag/views/pokebag_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.POKEBAG,
      page: () => PokebagView(),
      binding: PokebagBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_POKEMON,
      page: () => DetailPokemonView(),
      binding: DetailPokemonBinding(),
    ),
  ];
}
