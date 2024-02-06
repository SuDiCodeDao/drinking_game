part of 'game_play_bloc.dart';

abstract class GamePlayState extends Equatable {
  @override
  List<Object> get props => [];
}

class GamePlayInitial extends GamePlayState {}

class GamePlayLoadingState extends GamePlayState {}

class GamePlayLoadedState extends GamePlayState {
  final List<GameCard> gameCards;

  GamePlayLoadedState({required this.gameCards});
  @override
  List<Object> get props => [gameCards];
}

class GamePlayErrorState extends GamePlayState {
  final String errorMessage;
  GamePlayErrorState({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}

class GamePlaySuccessState extends GamePlayState {
  final GameCard gameCard;
  GamePlaySuccessState({required this.gameCard});
  @override
  List<Object> get props => [gameCard];
}
