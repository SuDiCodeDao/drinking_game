import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'game_play_event.dart';
part 'game_play_state.dart';

class GamePlayBloc extends Bloc<GamePlayEvent, GamePlayState> {
  GamePlayBloc() : super(GamePlayInitial()) {
    on<GamePlayEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
