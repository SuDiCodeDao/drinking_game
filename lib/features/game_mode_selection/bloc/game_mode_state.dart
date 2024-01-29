part of 'game_mode_bloc.dart';

abstract class GameModeState extends Equatable {
  const GameModeState();
  @override
  List<Object> get props => [];
}

class GameModeInitial extends GameModeState {}

class GameModeLoading extends GameModeState {}

class GameModeLoaded extends GameModeState {
  final List<GameMode> gameModes;

  const GameModeLoaded({required this.gameModes});
}

class GameModeError extends GameModeState {
  final String errorMessage;

  const GameModeError({required this.errorMessage});
}
