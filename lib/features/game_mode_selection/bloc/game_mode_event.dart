part of 'game_mode_bloc.dart';

abstract class GameModeEvent extends Equatable {
  const GameModeEvent();
  @override
  List<Object> get props => [];
}

class GameModeLoadEvent extends GameModeEvent {}

class GameModeSelectedEvent extends GameModeEvent {
  final GameMode gameMode;

  const GameModeSelectedEvent({required this.gameMode});
  @override
  List<Object> get props => [gameMode];
}
