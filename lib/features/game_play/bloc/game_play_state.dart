part of 'game_play_bloc.dart';

abstract class GamePlayState extends Equatable {
  const GamePlayState();
}

class GamePlayInitial extends GamePlayState {
  @override
  List<Object> get props => [];
}
