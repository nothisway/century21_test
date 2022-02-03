import 'package:century21test/app/data/model/pokedex_response.dart';
import 'package:century21test/app/data/repository/local_repository.dart';
import 'package:get/get.dart';

class PokebagController extends GetxController {
  List<PokedexResponseResults> pokebag = <PokedexResponseResults>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    initPokeBag();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  initPokeBag() async {
    List<PokedexResponseResults> _pokebag =
        await LocalRepository().getPokemon();
    pokebag = _pokebag;
    update();
  }

  deletePokemon(int index) async {
    pokebag.removeAt(index);
    await LocalRepository().savePokemon(pokebag);
    update();
  }
}
