// To parse this JSON data, do
//
//     final detailedGameModel = detailedGameModelFromJson(jsonString);

import 'dart:convert';

class DetailedGameModel {
  int id;
  String title;
  String thumbnail;
  String status;
  String shortDescription;
  String description;
  String gameUrl;
  String genre;
  String platform;
  String publisher;
  String developer;
  String releaseDate;
  String freetogameProfileUrl;
  MinimumSystemRequirements? minimumSystemRequirements;
  List<Screenshot> screenshots;

  DetailedGameModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.status,
    required this.shortDescription,
    required this.description,
    required this.gameUrl,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.releaseDate,
    required this.freetogameProfileUrl,
    this.minimumSystemRequirements,
    required this.screenshots,
  });

  factory DetailedGameModel.fromRawJson(String str) =>
      DetailedGameModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DetailedGameModel.fromJson(Map<String, dynamic> json) =>
      DetailedGameModel(
        id: json["id"],
        title: json["title"],
        thumbnail: json["thumbnail"],
        status: json["status"],
        shortDescription: json["short_description"],
        description: json["description"],
        gameUrl: json["game_url"],
        genre: json["genre"],
        platform: json["platform"],
        publisher: json["publisher"],
        developer: json["developer"],
        releaseDate: json["release_date"],
        freetogameProfileUrl: json["freetogame_profile_url"],
        minimumSystemRequirements:  json["minimum_system_requirements"] == null ? null : MinimumSystemRequirements.fromJson(
            json["minimum_system_requirements"]),
        screenshots: List<Screenshot>.from(
            json["screenshots"].map((x) => Screenshot.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "thumbnail": thumbnail,
        "status": status,
        "short_description": shortDescription,
        "description": description,
        "game_url": gameUrl,
        "genre": genre,
        "platform": platform,
        "publisher": publisher,
        "developer": developer,
        "release_date": releaseDate,
        "freetogame_profile_url": freetogameProfileUrl,
        "minimum_system_requirements": minimumSystemRequirements!.toJson(),
        "screenshots": List<dynamic>.from(screenshots.map((x) => x.toJson())),
      };
}

class MinimumSystemRequirements {
  String os;
  String processor;
  String memory;
  String graphics;
  String storage;

  MinimumSystemRequirements({
    required this.os,
    required this.processor,
    required this.memory,
    required this.graphics,
    required this.storage,
  });

  factory MinimumSystemRequirements.fromRawJson(String str) =>
      MinimumSystemRequirements.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MinimumSystemRequirements.fromJson(Map<String, dynamic> json) =>
      MinimumSystemRequirements(
        os: json["os"],
        processor: json["processor"],
        memory: json["memory"],
        graphics: json["graphics"],
        storage: json["storage"],
      );

  Map<String, dynamic> toJson() => {
        "os": os,
        "processor": processor,
        "memory": memory,
        "graphics": graphics,
        "storage": storage,
      };
}

class Screenshot {
  int id;
  String image;

  Screenshot({
    required this.id,
    required this.image,
  });

  factory Screenshot.fromRawJson(String str) =>
      Screenshot.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Screenshot.fromJson(Map<String, dynamic> json) => Screenshot(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
