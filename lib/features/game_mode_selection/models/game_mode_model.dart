import 'package:equatable/equatable.dart';

class GameMode extends Equatable {
  final String? name;
  final String? description;
  final String? imageUrl;

  const GameMode(
      {required this.name, required this.description, required this.imageUrl});
  Map<String, dynamic> toMap() {
    return {'name': name, 'description': description, 'imageUrl': imageUrl};
  }

  factory GameMode.fromMap(Map<String, dynamic> map) {
    return GameMode(
      name: map['name'],
      description: map['description'],
      imageUrl: map['imageUrl'],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, description, imageUrl];
}
