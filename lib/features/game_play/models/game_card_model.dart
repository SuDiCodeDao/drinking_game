import 'package:equatable/equatable.dart';

class GameCard extends Equatable {
  final int id;
  final String name;
  final String description;
  final String gameMode;
  final String image;

  const GameCard(
      {required this.id,
      required this.name,
      required this.description,
      required this.gameMode,
      required this.image});

  @override
  // TODO: implement props
  List<Object?> get props => [name, description, gameMode, image];
}
