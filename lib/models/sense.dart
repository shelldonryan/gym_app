class Sense {
  String id;
  String senseDescription;
  String data;

  Sense({required this.id, required this.senseDescription, required this.data});

  Sense.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        senseDescription = map["sense"],
        data = map["data"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sense": senseDescription,
      "data": data,
    };
  }
}