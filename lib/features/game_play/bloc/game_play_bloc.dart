import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/game_card_model.dart';

part 'game_play_event.dart';
part 'game_play_state.dart';

class GamePlayBloc extends Bloc<GamePlayEvent, GamePlayState> {
  GamePlayBloc() : super(const GamePlayInitial(true, true)) {
    on<GamePlayEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
