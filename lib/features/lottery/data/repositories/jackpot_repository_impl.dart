import 'package:dartz/dartz.dart';
import 'package:lottery_ticket/core/error/failures.dart';
import 'package:lottery_ticket/features/lottery/data/datasources/demo_jackpot_provider.dart';
import 'package:lottery_ticket/features/lottery/domain/entities/jackpot.dart';
import 'package:lottery_ticket/features/lottery/domain/repositories/jackpot_repositories.dart';

class JackpotRepositoryImpl implements JackpotRepository {
  @override
  Future<Either<Failure, List<Jackpot>>> getJackpots() async {
    final demoJackpotsProvider = await DemoJackpotProvider().getJackpots();
    return right(demoJackpotsProvider);
  }
}
