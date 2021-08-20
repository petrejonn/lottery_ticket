import 'package:dartz/dartz.dart';
import 'package:lottery_ticket/core/error/failures.dart';
import 'package:lottery_ticket/features/lottery/domain/entities/jackpot.dart';
import 'package:lottery_ticket/features/lottery/domain/repositories/jackpot_repositories.dart';

class GetJackpots {
  final JackpotRepository repository;
  GetJackpots(
    this.repository,
  );

  Future<Either<Failure, List<Jackpot>>> execute() async {
    return await repository.getJackpots();
  }
}
