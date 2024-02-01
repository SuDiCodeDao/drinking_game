part of 'game_settings_bloc.dart';

abstract class GameSettingsState extends Equatable {
  const GameSettingsState();
}

class GameSettingsInitial extends GameSettingsState {
  @override
  List<Object> get props => [];
}
