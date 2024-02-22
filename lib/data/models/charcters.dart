
class Character   {
  late final int id;
  late final String name;
  late final String status;
  late final String species;
  late final String type;
  late final String gender;
  late final Map<dynamic, dynamic> origin;
  late final Map<dynamic, dynamic> location;
  late final String image;
  late final List<dynamic> episode;
  late final String url;
  late final String created;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin = json['origin'];
    location = json['location'];
    image = json['image'];
    episode = json['episode'];
    url = json['url'];
    created = json['created'];
  }


}
