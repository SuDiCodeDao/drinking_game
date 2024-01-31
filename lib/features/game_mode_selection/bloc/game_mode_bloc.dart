import 'package:drinking_game/features/game_mode_selection/models/game_mode_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/game_mode_repository.dart';

part 'game_mode_event.dart';
part 'game_mode_state.dart';

class GameModeBloc extends Bloc<GameModeEvent, GameModeState> {
  final GameModeRepository _gameModeRepository;
  GameModeBloc(this._gameModeRepository) : super(GameModeInitial()) {
    on<GameModeLoadEvent>((event, emit) async {
      emit(GameModeLoading());
      try {
        final gameModes = await _gameModeRepository.getGameModes();
        print(gameModes);
        emit(GameModeLoaded(gameModes: gameModes));
      } catch (e) {
        emit(GameModeError(errorMessage: e.toString()));
        print(e.toString());
      }
    });
  }
}
