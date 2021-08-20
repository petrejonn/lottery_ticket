part of 'play_cubit.dart';

abstract class PlayState extends Equatable {
  const PlayState();
  @override
  List<Object> get props => [];
}

class PlayEmpty extends PlayState {}

class PlayTyping extends PlayState {
  PlayTyping(this.numbers, this.activeField);
  final List<int> numbers;
  final List<int> activeField;
}
