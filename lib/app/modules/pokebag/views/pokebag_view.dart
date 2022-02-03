import 'package:century21test/app/data/model/pokedex_response.dart';
import 'package:century21test/app/modules/detail_pokemon/views/detail_pokemon_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/pokebag_controller.dart';

class PokebagView extends GetView<PokebagController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PokebagController>(
        init: PokebagController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text("PokeDex"),
            ),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Obx(
                    () => GridView.builder(
                      itemCount: controller.pokebag.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        PokedexResponseResults data = controller.pokebag[index];
                        return InkWell(
                          onTap: () {
                            Get.to(() => DetailPokemonView(), arguments: data);
                          },
                          child: Container(
                            margin: EdgeInsets.all(12),
                            padding: EdgeInsets.all(12),
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Text(
                                    toBeginningOfSentenceCase(data.name) ?? ""),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(data.pokemonResponse
                                          ?.sprites?.frontDefault ??
                                      ""),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: InkWell(
                                    onTap: () {
                                      controller.deletePokemon(index);
                                    },
                                    child: Icon(Icons.delete),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
