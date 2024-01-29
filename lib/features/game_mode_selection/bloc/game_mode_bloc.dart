import 'package:bloc/bloc.dart';
import 'package:drinking_game/features/game_mode_selection/models/game_mode_model.dart';
import 'package:equatable/equatable.dart';

part 'game_mode_event.dart';
part 'game_mode_state.dart';

class GameModeBloc extends Bloc<GameModeEvent, GameModeState> {
  GameModeBloc() : super(GameModeInitial()) {
    on<GameModeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
