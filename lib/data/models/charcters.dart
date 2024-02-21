class Character {
  late int id;
  late String name;
  late String status;
  late String species;
  late String type;
  late String gender;
  late Origin origin;
  late Location location;
  late String image;
  late List<String> episodes;
  late String url;
  late String created;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episodes,
    required this.url,
    required this.created,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: Origin.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
      image: json['image'],
      episodes: List<String>.from(json['episode']),
      url: json['url'],
      created: json['created'],
    );
  }
}

class Origin {
  late String name;
  late String url;

  Origin.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        url = json['url'];
}

class Location {
  late String name;
  late String url;

  Location.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        url = json['url'];
}
