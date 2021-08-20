import 'dart:convert';

import 'package:lottery_ticket/features/lottery/domain/entities/jackpot.dart';

class JackpotModel extends Jackpot {
  final String id;
  final String title;
  final double prize;
  final String logoUrl;
  final String countryCode;
  final String time;
  JackpotModel({
    required this.id,
    required this.title,
    required this.prize,
    required this.logoUrl,
    required this.countryCode,
    required this.time,
  }) : super(
            id: id,
            title: title,
            prize: prize,
            logoUrl: logoUrl,
            countryCode: countryCode,
            time: time);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'prize': prize,
      'logoUrl': logoUrl,
      'countryCode': countryCode,
      'time': time,
    };
  }

  factory JackpotModel.fromMap(Map<String, dynamic> map) {
    return JackpotModel(
      id: map['id'],
      title: map['title'],
      prize: map['prize'],
      logoUrl: map['logoUrl'],
      countryCode: map['countryCode'],
      time: map['time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory JackpotModel.fromJson(String source) =>
      JackpotModel.fromMap(json.decode(source));
}
