import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/game_card_model.dart';
import '../repositories/game_play_repository.dart';

part 'game_play_event.dart';
part 'game_play_state.dart';

class GamePlayBloc extends Bloc<GamePlayEvent, GamePlayState> {
  final GamePlayRepository _gamePlayRepository;
  GamePlayBloc(this._gamePlayRepository) : super(GamePlayInitial()) {
    on<GamePlayLoadEvent>((event, emit) async {
      emit(GamePlayLoadingState());
      try {
        final gameCards =
            await _gamePlayRepository.getGameCards(event.gameModeId);
        emit(GamePlayLoadedState(gameCards: gameCards));
      } catch (e) {
        emit(GamePlayErrorState(errorMessage: e.toString()));
      }
    });
  }
}
