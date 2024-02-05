import 'package:equatable/equatable.dart';

class GameCard extends Equatable {
  final int id;
  final String name;
  final int gameModeId;

  const GameCard({
    required this.id,
    required this.name,
    required this.gameModeId,
  });
  factory GameCard.fromMap(Map<String, dynamic> map) {
    return GameCard(
      id: map['id'],
      name: map['name'],
      gameModeId: map['gameModeId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'gameModeId': gameModeId};
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, gameModeId];
}
