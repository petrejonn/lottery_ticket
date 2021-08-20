part of 'jackpot_cubit.dart';

abstract class JackpotState extends Equatable {
  const JackpotState();

  @override
  List<Object> get props => [];
}

class JackpotInitial extends JackpotState {}

class JackpotLoading extends JackpotState {}

class JackpotLoaded extends JackpotState {
  final List<Jackpot> jackpots;
  JackpotLoaded({required this.jackpots});

  @override
  List<Object> get props => [jackpots];
}

class JackpotLoadError extends JackpotState {
  final String message;
  JackpotLoadError({required this.message});

  @override
  List<Object> get props => [message];
}
