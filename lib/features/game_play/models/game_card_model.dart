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

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, gameMode];
}
