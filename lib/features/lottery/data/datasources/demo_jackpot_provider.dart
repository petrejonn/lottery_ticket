import 'package:lottery_ticket/features/lottery/data/model/jackpot_model.dart';

class DemoJackpotProvider {
  Future<List<JackpotModel>> getJackpots() async {
    return [
      JackpotModel(
          id: 'F7D0',
          title: 'Super Ball',
          prize: 25000000,
          logoUrl: 'assets/logos/logo1.jpg',
          countryCode: 'US',
          time: '08:25:45'),
      JackpotModel(
          id: 'A200',
          title: 'Easy Moni',
          prize: 643000000,
          logoUrl: 'assets/logos/logo2.jpg',
          countryCode: 'CA',
          time: '08:25:45'),
      JackpotModel(
          id: 'B313',
          title: 'Africa Connect',
          prize: 120000000,
          logoUrl: 'assets/logos/logo3.jpg',
          countryCode: 'GH',
          time: '08:25:45'),
      JackpotModel(
          id: 'FFF0',
          title: 'Super Ball',
          prize: 100000000,
          logoUrl: 'assets/logos/logo4.jpg',
          countryCode: 'CN',
          time: '08:25:45'),
      JackpotModel(
          id: 'BBA0',
          title: 'Bob Frazer',
          prize: 900000,
          logoUrl: 'assets/logos/logo1.jpg',
          countryCode: 'GB',
          time: '08:25:45'),
      JackpotModel(
          id: '0000',
          title: 'Kingdom Love',
          prize: 9999999,
          logoUrl: 'assets/logos/logo2.jpg',
          countryCode: 'RU',
          time: '08:25:45'),
    ];
  }
}
