import 'package:dartz/dartz.dart';
import 'package:lottery_ticket/core/error/failures.dart';
import 'package:lottery_ticket/features/lottery/domain/entities/jackpot.dart';

abstract class JackpotRepository {
  Future<Either<Failure, List<Jackpot>>> getJackpots();
}
