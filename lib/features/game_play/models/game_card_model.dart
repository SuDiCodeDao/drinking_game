import 'package:equatable/equatable.dart';

class GameCard extends Equatable {
  final int id;
  final String name;
  final String gameMode;

  const GameCard({
    required this.id,
    required this.name,
    required this.gameMode,
  });
  factory GameCard.fromMap(Map<String, dynamic> map) {
    return GameCard(
      id: map['id'],
      name: map['name'],
      gameMode: map['gameMode'],
    );
  }
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'gameMode': gameMode};
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, gameMode];
}
