import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lottery_ticket/features/lottery/data/repositories/jackpot_repository_impl.dart';
import 'package:lottery_ticket/features/lottery/domain/entities/jackpot.dart';
import 'package:lottery_ticket/features/lottery/domain/usecases/get_jackpots.dart';

part 'jackpot_state.dart';

class JackpotCubit extends Cubit<JackpotState> {
  JackpotCubit() : super(JackpotInitial());
  final _repository = JackpotRepositoryImpl();

  void getJackposts() async {
    final getJackpotsUsecase = GetJackpots(_repository);
    final jackpots = await getJackpotsUsecase.execute();
    jackpots.fold(
        (l) => emit(JackpotLoadError(message: 'Failed to load Jackpots')),
        (r) => emit(JackpotLoaded(jackpots: r)));
  }
}
