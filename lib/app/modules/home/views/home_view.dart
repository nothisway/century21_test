import 'package:century21test/app/data/model/pokedex_response.dart';
import 'package:century21test/app/modules/detail_pokemon/views/detail_pokemon_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text("PokeDex"),
            ),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: PagedGridView(
                    pagingController: controller.pagingController,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      crossAxisCount: 2,
                    ),
                    builderDelegate:
                        PagedChildBuilderDelegate<PokedexResponseResults?>(
                      itemBuilder: (context, item, index) => InkWell(
                        onTap: () {
                          Get.to(() => DetailPokemonView(), arguments: item);
                        },
                        child: Container(
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(12),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Text(
                                toBeginningOfSentenceCase(item?.name) ?? "",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Image.network(item?.pokemonResponse
                                        ?.sprites?.frontDefault ??
                                    ""),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
