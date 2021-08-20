import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'play_state.dart';

class PlayCubit extends Cubit<PlayState> {
  PlayCubit() : super(PlayEmpty());

  void setActiveField(int index) {}

  void enterNumber(int number) {}
}
