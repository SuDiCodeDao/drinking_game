import 'package:equatable/equatable.dart';

class GameMode extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final String? imageUrl;
  final int? isLocked;

  const GameMode(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.isLocked});

  factory GameMode.fromMap(Map<String, dynamic> map) {
    return GameMode(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      imageUrl: map['imageUrl'],
      isLocked: map['isLocked'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'isLocked': isLocked,
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, description, imageUrl, isLocked];
}
