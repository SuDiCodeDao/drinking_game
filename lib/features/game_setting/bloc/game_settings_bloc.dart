import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'game_settings_event.dart';
part 'game_settings_state.dart';

class GameSettingsBloc extends Bloc<GameSettingsEvent, GameSettingsState> {
  GameSettingsBloc() : super(GameSettingsInitial()) {
    on<GameSettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
