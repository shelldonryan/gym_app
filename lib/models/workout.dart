class Workout {
  String id;
  String name;
  String description;
  String? urlImage;

  Workout({
    required this.id,
    required this.name,
    required this.description,
  });

  Workout.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        description = map["description"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "urlImage": urlImage,
    };
  }
}