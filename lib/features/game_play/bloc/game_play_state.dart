part of 'game_play_bloc.dart';

abstract class GamePlayState extends Equatable {
  const GamePlayState(this.isSoundOn, this.showHelpDialog);
  final bool isSoundOn;
  final bool showHelpDialog;
  @override
  List<Object> get props => [isSoundOn, showHelpDialog];
}

class GamePlayInitial extends GamePlayState {
  const GamePlayInitial(super.isSoundOn, super.showHelpDialog);
}

class GamePlayLoadingState extends GamePlayState {
  const GamePlayLoadingState(super.isSoundOn, super.showHelpDialog);
}

class GamePlayLoadedState extends GamePlayState {
  final List<GameCard> gameCards;

  const GamePlayLoadedState(super.isSoundOn, super.showHelpDialog,
      {required this.gameCards});
  @override
  List<Object> get props => [gameCards];
}

class GamePlayErrorState extends GamePlayState {
  final String errorMessage;
  const GamePlayErrorState(super.isSoundOn, super.showHelpDialog,
      {required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}

class GamePlaySuccessState extends GamePlayState {
  final GameCard gameCard;
  const GamePlaySuccessState(super.isSoundOn, super.showHelpDialog,
      {required this.gameCard});
  @override
  List<Object> get props => [gameCard];
}
