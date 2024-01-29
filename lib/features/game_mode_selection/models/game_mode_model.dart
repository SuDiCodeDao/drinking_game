class GameMode {
  final String? name;
  final String? description;

  GameMode({required this.name, required this.description});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
    };
  }

  factory GameMode.fromMap(Map<String, dynamic> map) {
    return GameMode(
      name: map['name'],
      description: map['description'],
    );
  }
}
