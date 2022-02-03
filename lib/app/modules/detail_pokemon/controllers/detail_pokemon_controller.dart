import 'package:century21test/app/data/model/pokedex_response.dart';
import 'package:century21test/app/data/repository/local_repository.dart';
import 'package:century21test/app/modules/pokebag/views/pokebag_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

import 'package:lottie/lottie.dart';

class DetailPokemonController extends GetxController {
  PokedexResponseResults? pokedexResponseResults = Get.arguments;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  catchPokemon() async {
    Get.dialog(
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              color: Color(0x00eeeeee)),
          margin: EdgeInsets.all(16),
          child: Image.asset(
            'assets/pokeball.gif',
            fit: BoxFit.fitWidth,
          ),
        ),
        barrierDismissible: false);

    await Future.delayed(Duration(seconds: 3));

    if (getPokemon()) {
      Get.back();
      Get.bottomSheet(
          Container(
            padding: EdgeInsets.all(20),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/loose.json',
                  height: 120,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(height: 16),
                Text(
                  "Ooops sorry!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 16),
                Text("Your pokemon is run away, but you can try again!"),
                SizedBox(height: 16),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(200, 40),
                    backgroundColor: Theme.of(Get.context!).primaryColor,
                    padding: EdgeInsets.all(0),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Oke",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          isDismissible: false);
    } else {
      Get.back();

      List<PokedexResponseResults> pokebag =
          await LocalRepository().getPokemon();
      pokebag.insert(0, pokedexResponseResults!);

      await LocalRepository().savePokemon(pokebag);

      Get.bottomSheet(
          Container(
            padding: EdgeInsets.all(20),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/win.json',
                  width: 180,
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 16),
                Text(
                  "Gatchaaa!!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 16),
                Text("Congrats, click the button to save to pokebag!"),
                SizedBox(height: 16),
                _buttonPreview(40, 200)
              ],
            ),
          ),
          isDismissible: false);
    }
  }

  bool getPokemon() {
    Random r = Random();
    double falseProbability = .9;
    bool booleanResult = r.nextDouble() > falseProbability;
    return booleanResult;
  }

  _buttonPreview(double _height, double _width) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(_width, _height),
      backgroundColor: Theme.of(Get.context!).primaryColor,
      padding: EdgeInsets.all(0),
    );
    return TextButton(
      style: flatButtonStyle,
      onPressed: () {
        Get.back();
        Get.back();
        Get.to(() => PokebagView());
      },
      child: Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
