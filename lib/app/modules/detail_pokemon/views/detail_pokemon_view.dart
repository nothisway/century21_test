import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/detail_pokemon_controller.dart';

class DetailPokemonView extends GetView<DetailPokemonController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailPokemonController>(
        init: DetailPokemonController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text('DetailPokemonView'),
              centerTitle: true,
            ),
            floatingActionButton: Container(
              width: Get.width,
              height: 50,
              color: Colors.white.withOpacity(0),
              child: InkWell(
                onTap: () async {
                  controller.catchPokemon();
                },
                child: Bounce(
                  infinite: true,
                  animate: true,
                  child: Container(
                    margin: EdgeInsets.only(left: 28),
                    child: SvgPicture.asset(
                      "assets/pokeball.svg",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 120),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 50.0,
                          ),
                          Center(
                            child: Text(
                              toBeginningOfSentenceCase(controller
                                      .pokedexResponseResults?.name) ??
                                  "",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Ability",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            spacing: 6.0,
                            runSpacing: 6.0,
                            children: controller.pokedexResponseResults!
                                .pokemonResponse!.abilities!
                                .map((t) => FilterChip(
                                    backgroundColor: Colors.green,
                                    label: Text(
                                      t!.ability!.name!,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onSelected: (b) {}))
                                .toList(),
                          ),
                          Text(
                            "Types",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            spacing: 6.0,
                            runSpacing: 6.0,
                            children: controller
                                .pokedexResponseResults!.pokemonResponse!.types!
                                .map((t) => FilterChip(
                                    backgroundColor: Colors.amber,
                                    label: Text(
                                      t!.type!.name!,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onSelected: (b) {}))
                                .toList(),
                          ),
                          Text("Moves",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Wrap(
                            spacing: 6.0,
                            runSpacing: 6.0,
                            children: controller
                                .pokedexResponseResults!.pokemonResponse!.moves!
                                .map((t) => FilterChip(
                                    backgroundColor: Colors.blue,
                                    label: Text(
                                      t!.move!.name!,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onSelected: (b) {}))
                                .toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: controller.pokedexResponseResults!.pokemonResponse!
                          .sprites!.frontDefault
                          .toString(),
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              controller.pokedexResponseResults!
                                  .pokemonResponse!.sprites!.frontDefault
                                  .toString(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
