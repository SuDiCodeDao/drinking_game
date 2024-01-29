import 'package:equatable/equatable.dart';

class GameMode extends Equatable {
  final String? name;
  final String? description;

  const GameMode({required this.name, required this.description});
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

  @override
  // TODO: implement props
  List<Object?> get props => [name, description];
}
