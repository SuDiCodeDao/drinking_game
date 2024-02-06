part of 'game_play_bloc.dart';

abstract class GamePlayEvent extends Equatable {
  const GamePlayEvent();
  @override
  List<Object> get props => [];
}

class GamePlayLoadEvent extends GamePlayEvent {
  final int gameModeId;
  const GamePlayLoadEvent(this.gameModeId);

  @override
  List<Object> get props => [gameModeId];
}

class GamePlayHelpButtonPressedEvent extends GamePlayEvent {}

class GamePlaySoundButtonPressedEvent extends GamePlayEvent {}

class GamePlayNextButtonPressedEvent extends GamePlayEvent {}
