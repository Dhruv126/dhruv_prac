import 'dart:convert';

List<CatDetailsModel> catDetailsModelFromJson(String str) => List<CatDetailsModel>.from(json.decode(str).map((x) => CatDetailsModel.fromJson(x)));

String catDetailsModelToJson(List<CatDetailsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatDetailsModel {
  Weight? weight;
  String? id;
  String? name;
  String? cfaUrl;
  String? vetstreetUrl;
  String? vcahospitalsUrl;
  String? temperament;
  String? origin;
  String? countryCodes;
  String? countryCode;
  String? description;
  String? lifeSpan;
  int? indoor;
  int? lap;
  int? adaptability;
  int? affectionLevel;
  int? childFriendly;
  int? catFriendly;
  int? dogFriendly;
  int? energyLevel;
  int? grooming;
  int? healthIssues;
  int? intelligence;
  int? sheddingLevel;
  int? socialNeeds;
  int? strangerFriendly;
  int? vocalisation;
  int? bidability;
  int? experimental;
  int? hairless;
  int? natural;
  int? rare;
  int? rex;
  int? suppressedTail;
  int? shortLegs;
  String? wikipediaUrl;
  int? hypoallergenic;
  String? referenceImageId;
  String? altNames;

  CatDetailsModel({
    this.weight,
    this.id,
    this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.lifeSpan,
    this.indoor,
    this.lap,
    this.adaptability,
    this.affectionLevel,
    this.childFriendly,
    this.catFriendly,
    this.dogFriendly,
    this.energyLevel,
    this.grooming,
    this.healthIssues,
    this.intelligence,
    this.sheddingLevel,
    this.socialNeeds,
    this.strangerFriendly,
    this.vocalisation,
    this.bidability,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
    this.altNames,
  });

  factory CatDetailsModel.fromJson(Map<String, dynamic> json) => CatDetailsModel(
    weight: json["weight"] == null ? null : Weight.fromJson(json["weight"]),
    id: json["id"],
    name: json["name"],
    cfaUrl: json["cfa_url"],
    vetstreetUrl: json["vetstreet_url"],
    vcahospitalsUrl: json["vcahospitals_url"],
    temperament: json["temperament"],
    origin: json["origin"],
    countryCodes: json["country_codes"],
    countryCode: json["country_code"],
    description: json["description"],
    lifeSpan: json["life_span"],
    indoor: json["indoor"],
    lap: json["lap"],
    adaptability: json["adaptability"],
    affectionLevel: json["affection_level"],
    childFriendly: json["child_friendly"],
    catFriendly: json["cat_friendly"],
    dogFriendly: json["dog_friendly"],
    energyLevel: json["energy_level"],
    grooming: json["grooming"],
    healthIssues: json["health_issues"],
    intelligence: json["intelligence"],
    sheddingLevel: json["shedding_level"],
    socialNeeds: json["social_needs"],
    strangerFriendly: json["stranger_friendly"],
    vocalisation: json["vocalisation"],
    bidability: json["bidability"],
    experimental: json["experimental"],
    hairless: json["hairless"],
    natural: json["natural"],
    rare: json["rare"],
    rex: json["rex"],
    suppressedTail: json["suppressed_tail"],
    shortLegs: json["short_legs"],
    wikipediaUrl: json["wikipedia_url"],
    hypoallergenic: json["hypoallergenic"],
    referenceImageId: json["reference_image_id"],
    altNames: json["alt_names"],
  );

  Map<String, dynamic> toJson() => {
    "weight": weight?.toJson(),
    "id": id,
    "name": name,
    "cfa_url": cfaUrl,
    "vetstreet_url": vetstreetUrl,
    "vcahospitals_url": vcahospitalsUrl,
    "temperament": temperament,
    "origin": origin,
    "country_codes": countryCodes,
    "country_code": countryCode,
    "description": description,
    "life_span": lifeSpan,
    "indoor": indoor,
    "lap": lap,
    "adaptability": adaptability,
    "affection_level": affectionLevel,
    "child_friendly": childFriendly,
    "cat_friendly": catFriendly,
    "dog_friendly": dogFriendly,
    "energy_level": energyLevel,
    "grooming": grooming,
    "health_issues": healthIssues,
    "intelligence": intelligence,
    "shedding_level": sheddingLevel,
    "social_needs": socialNeeds,
    "stranger_friendly": strangerFriendly,
    "vocalisation": vocalisation,
    "bidability": bidability,
    "experimental": experimental,
    "hairless": hairless,
    "natural": natural,
    "rare": rare,
    "rex": rex,
    "suppressed_tail": suppressedTail,
    "short_legs": shortLegs,
    "wikipedia_url": wikipediaUrl,
    "hypoallergenic": hypoallergenic,
    "reference_image_id": referenceImageId,
    "alt_names": altNames,
  };
}

class Weight {
  String? imperial;
  String? metric;

  Weight({
    this.imperial,
    this.metric,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
    imperial: json["imperial"],
    metric: json["metric"],
  );

  Map<String, dynamic> toJson() => {
    "imperial": imperial,
    "metric": metric,
  };
}
