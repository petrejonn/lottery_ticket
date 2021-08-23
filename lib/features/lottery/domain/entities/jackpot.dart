import 'package:equatable/equatable.dart';

class Jackpot extends Equatable {
  final String id;
  final String title;
  final int prize;
  final String logoUrl;
  final String countryCode;
  final String time;
  Jackpot({
    required this.id,
    required this.title,
    required this.prize,
    required this.logoUrl,
    required this.countryCode,
    required this.time,
  });

  @override
  List<Object?> get props => [id, title, prize, logoUrl, countryCode, time];
}
