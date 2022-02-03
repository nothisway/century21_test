import 'dart:convert';

///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class PokedexResponseResultsPokemonResponseTypesType {
/*
{
  "name": "fire",
  "url": "https://pokeapi.co/api/v2/type/10/"
} 
*/

  String? name;
  String? url;

  PokedexResponseResultsPokemonResponseTypesType({
    this.name,
    this.url,
  });
  PokedexResponseResultsPokemonResponseTypesType.fromJson(
      Map<String, dynamic> json) {
    name = json['name']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class PokedexResponseResultsPokemonResponseTypes {
/*
{
  "slot": 1,
  "type": {
    "name": "fire",
    "url": "https://pokeapi.co/api/v2/type/10/"
  }
} 
*/

  int? slot;
  PokedexResponseResultsPokemonResponseTypesType? type;

  PokedexResponseResultsPokemonResponseTypes({
    this.slot,
    this.type,
  });
  PokedexResponseResultsPokemonResponseTypes.fromJson(
      Map<String, dynamic> json) {
    slot = json['slot']?.toInt();
    type = (json['type'] != null)
        ? PokedexResponseResultsPokemonResponseTypesType.fromJson(json['type'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['slot'] = slot;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    return data;
  }
}

class PokedexResponseResultsPokemonResponseSprites {
/*
{
  "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png",
  "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/4.png",
  "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
  "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/4.png"
} 
*/

  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  PokedexResponseResultsPokemonResponseSprites({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });
  PokedexResponseResultsPokemonResponseSprites.fromJson(
      Map<String, dynamic> json) {
    backDefault = json['back_default']?.toString();
    backShiny = json['back_shiny']?.toString();
    frontDefault = json['front_default']?.toString();
    frontShiny = json['front_shiny']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

class PokedexResponseResultsPokemonResponseSpecies {
/*
{
  "name": "charmander",
  "url": "https://pokeapi.co/api/v2/pokemon-species/4/"
} 
*/

  String? name;
  String? url;

  PokedexResponseResultsPokemonResponseSpecies({
    this.name,
    this.url,
  });
  PokedexResponseResultsPokemonResponseSpecies.fromJson(
      Map<String, dynamic> json) {
    name = json['name']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class PokedexResponseResultsPokemonResponseMovesMove {
/*
{
  "name": "mega-punch",
  "url": "https://pokeapi.co/api/v2/move/5/"
} 
*/

  String? name;
  String? url;

  PokedexResponseResultsPokemonResponseMovesMove({
    this.name,
    this.url,
  });
  PokedexResponseResultsPokemonResponseMovesMove.fromJson(
      Map<String, dynamic> json) {
    name = json['name']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class PokedexResponseResultsPokemonResponseMoves {
/*
{
  "move": {
    "name": "mega-punch",
    "url": "https://pokeapi.co/api/v2/move/5/"
  }
} 
*/

  PokedexResponseResultsPokemonResponseMovesMove? move;

  PokedexResponseResultsPokemonResponseMoves({
    this.move,
  });
  PokedexResponseResultsPokemonResponseMoves.fromJson(
      Map<String, dynamic> json) {
    move = (json['move'] != null)
        ? PokedexResponseResultsPokemonResponseMovesMove.fromJson(json['move'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (move != null) {
      data['move'] = move!.toJson();
    }
    return data;
  }
}

class PokedexResponseResultsPokemonResponseAbilitiesAbility {
/*
{
  "name": "blaze",
  "url": "https://pokeapi.co/api/v2/ability/66/"
} 
*/

  String? name;
  String? url;

  PokedexResponseResultsPokemonResponseAbilitiesAbility({
    this.name,
    this.url,
  });
  PokedexResponseResultsPokemonResponseAbilitiesAbility.fromJson(
      Map<String, dynamic> json) {
    name = json['name']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class PokedexResponseResultsPokemonResponseAbilities {
/*
{
  "ability": {
    "name": "blaze",
    "url": "https://pokeapi.co/api/v2/ability/66/"
  },
  "is_hidden": false,
  "slot": 1
} 
*/

  PokedexResponseResultsPokemonResponseAbilitiesAbility? ability;
  bool? isHidden;
  int? slot;

  PokedexResponseResultsPokemonResponseAbilities({
    this.ability,
    this.isHidden,
    this.slot,
  });
  PokedexResponseResultsPokemonResponseAbilities.fromJson(
      Map<String, dynamic> json) {
    ability = (json['ability'] != null)
        ? PokedexResponseResultsPokemonResponseAbilitiesAbility.fromJson(
            json['ability'])
        : null;
    isHidden = json['is_hidden'];
    slot = json['slot']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (ability != null) {
      data['ability'] = ability!.toJson();
    }
    data['is_hidden'] = isHidden;
    data['slot'] = slot;
    return data;
  }
}

class PokedexResponseResultsPokemonResponse {
/*
{
  "abilities": [
    {
      "ability": {
        "name": "blaze",
        "url": "https://pokeapi.co/api/v2/ability/66/"
      },
      "is_hidden": false,
      "slot": 1
    }
  ],
  "height": 6,
  "id": 4,
  "is_default": true,
  "moves": [
    {
      "move": {
        "name": "mega-punch",
        "url": "https://pokeapi.co/api/v2/move/5/"
      }
    }
  ],
  "name": "charmander",
  "order": 5,
  "species": {
    "name": "charmander",
    "url": "https://pokeapi.co/api/v2/pokemon-species/4/"
  },
  "sprites": {
    "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png",
    "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/4.png",
    "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
    "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/4.png"
  },
  "types": [
    {
      "slot": 1,
      "type": {
        "name": "fire",
        "url": "https://pokeapi.co/api/v2/type/10/"
      }
    }
  ],
  "weight": 85
} 
*/

  List<PokedexResponseResultsPokemonResponseAbilities?>? abilities;
  int? height;
  int? id;
  bool? isDefault;
  List<PokedexResponseResultsPokemonResponseMoves?>? moves;
  String? name;
  int? order;
  PokedexResponseResultsPokemonResponseSpecies? species;
  PokedexResponseResultsPokemonResponseSprites? sprites;
  List<PokedexResponseResultsPokemonResponseTypes?>? types;
  int? weight;

  PokedexResponseResultsPokemonResponse({
    this.abilities,
    this.height,
    this.id,
    this.isDefault,
    this.moves,
    this.name,
    this.order,
    this.species,
    this.sprites,
    this.types,
    this.weight,
  });
  PokedexResponseResultsPokemonResponse.fromJson(Map<String, dynamic> json) {
    if (json['abilities'] != null) {
      final v = json['abilities'];
      final arr0 = <PokedexResponseResultsPokemonResponseAbilities>[];
      v.forEach((v) {
        arr0.add(PokedexResponseResultsPokemonResponseAbilities.fromJson(v));
      });
      abilities = arr0;
    }
    height = json['height']?.toInt();
    id = json['id']?.toInt();
    isDefault = json['is_default'];
    if (json['moves'] != null) {
      final v = json['moves'];
      final arr0 = <PokedexResponseResultsPokemonResponseMoves>[];
      v.forEach((v) {
        arr0.add(PokedexResponseResultsPokemonResponseMoves.fromJson(v));
      });
      moves = arr0;
    }
    name = json['name']?.toString();
    order = json['order']?.toInt();
    species = (json['species'] != null)
        ? PokedexResponseResultsPokemonResponseSpecies.fromJson(json['species'])
        : null;
    sprites = (json['sprites'] != null)
        ? PokedexResponseResultsPokemonResponseSprites.fromJson(json['sprites'])
        : null;
    if (json['types'] != null) {
      final v = json['types'];
      final arr0 = <PokedexResponseResultsPokemonResponseTypes>[];
      v.forEach((v) {
        arr0.add(PokedexResponseResultsPokemonResponseTypes.fromJson(v));
      });
      types = arr0;
    }
    weight = json['weight']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (abilities != null) {
      final v = abilities;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['abilities'] = arr0;
    }
    data['height'] = height;
    data['id'] = id;
    data['is_default'] = isDefault;
    if (moves != null) {
      final v = moves;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['moves'] = arr0;
    }
    data['name'] = name;
    data['order'] = order;
    if (species != null) {
      data['species'] = species!.toJson();
    }
    if (sprites != null) {
      data['sprites'] = sprites!.toJson();
    }
    if (types != null) {
      final v = types;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['types'] = arr0;
    }
    data['weight'] = weight;
    return data;
  }
}

class PokedexResponseResults {
/*
{
  "name": "bulbasaur",
  "url": "https://pokeapi.co/api/v2/pokemon/1/",
  "pokemonResponse": {
    "abilities": [
      {
        "ability": {
          "name": "blaze",
          "url": "https://pokeapi.co/api/v2/ability/66/"
        },
        "is_hidden": false,
        "slot": 1
      }
    ],
    "height": 6,
    "id": 4,
    "is_default": true,
    "moves": [
      {
        "move": {
          "name": "mega-punch",
          "url": "https://pokeapi.co/api/v2/move/5/"
        }
      }
    ],
    "name": "charmander",
    "order": 5,
    "species": {
      "name": "charmander",
      "url": "https://pokeapi.co/api/v2/pokemon-species/4/"
    },
    "sprites": {
      "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png",
      "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/4.png",
      "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
      "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/4.png"
    },
    "types": [
      {
        "slot": 1,
        "type": {
          "name": "fire",
          "url": "https://pokeapi.co/api/v2/type/10/"
        }
      }
    ],
    "weight": 85
  }
} 
*/

  String? name;
  String? url;
  PokedexResponseResultsPokemonResponse? pokemonResponse;

  PokedexResponseResults({
    this.name,
    this.url,
    this.pokemonResponse,
  });
  PokedexResponseResults.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    url = json['url']?.toString();
    pokemonResponse = (json['pokemonResponse'] != null)
        ? PokedexResponseResultsPokemonResponse.fromJson(
            json['pokemonResponse'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    if (pokemonResponse != null) {
      data['pokemonResponse'] = pokemonResponse!.toJson();
    }
    return data;
  }
}

class PokedexResponse {
/*
{
  "count": 1118,
  "next": "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20",
  "previous": "null",
  "results": [
    {
      "name": "bulbasaur",
      "url": "https://pokeapi.co/api/v2/pokemon/1/",
      "pokemonResponse": {
        "abilities": [
          {
            "ability": {
              "name": "blaze",
              "url": "https://pokeapi.co/api/v2/ability/66/"
            },
            "is_hidden": false,
            "slot": 1
          }
        ],
        "height": 6,
        "id": 4,
        "is_default": true,
        "moves": [
          {
            "move": {
              "name": "mega-punch",
              "url": "https://pokeapi.co/api/v2/move/5/"
            }
          }
        ],
        "name": "charmander",
        "order": 5,
        "species": {
          "name": "charmander",
          "url": "https://pokeapi.co/api/v2/pokemon-species/4/"
        },
        "sprites": {
          "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png",
          "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/4.png",
          "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
          "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/4.png"
        },
        "types": [
          {
            "slot": 1,
            "type": {
              "name": "fire",
              "url": "https://pokeapi.co/api/v2/type/10/"
            }
          }
        ],
        "weight": 85
      }
    }
  ]
} 
*/

  int? count;
  String? next;
  String? previous;
  List<PokedexResponseResults?>? results;

  PokedexResponse({
    this.count,
    this.next,
    this.previous,
    this.results,
  });
  PokedexResponse.fromJson(Map<String, dynamic> json) {
    count = json['count']?.toInt();
    next = json['next']?.toString();
    previous = json['previous']?.toString();
    if (json['results'] != null) {
      final v = json['results'];
      final arr0 = <PokedexResponseResults>[];
      v.forEach((v) {
        arr0.add(PokedexResponseResults.fromJson(v));
      });
      results = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      final v = results;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['results'] = arr0;
    }
    return data;
  }
}

List<PokedexResponseResults> pokedexResponseResultsFromJson(String str) =>
    List<PokedexResponseResults>.from(
        json.decode(str).map((x) => PokedexResponseResults.fromJson(x)));

String pokedexResponseResultsToJson(List<PokedexResponseResults> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
