part of 'game_play_bloc.dart';

abstract class GamePlayState extends Equatable {
  const GamePlayState();
  @override
  List<Object> get props => [];
}

class GamePlayInitial extends GamePlayState {}

class GamePlayLoadingState extends GamePlayState {}

class GamePlayLoadedState extends GamePlayState {}

class GamePlayErrorState extends GamePlayState {}

class GamePlaySuccessState extends GamePlayState {}
