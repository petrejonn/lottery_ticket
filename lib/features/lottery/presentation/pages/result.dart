import 'package:flutter/material.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/app_background.dart';
import 'package:sizer/sizer.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.numbers}) : super(key: key);
  final String numbers;
  @override
  Widget build(BuildContext context) {
    return AppBackground(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          ),
        ),
        leadingWidth: 24,
        backgroundColor: Colors.transparent,
        title: Text(
          'Your Result',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: numbers == '12, 18, 22, 26,30'
              ? _result(context, 'Congratulations You Are a Big Winner...',
                  25000, 'assets/illustrations/win.png')
              : _result(context, 'Ops! You Lose Lottery...', 0,
                  'assets/illustrations/lost.png'),
        ),
      ),
    ));
  }

  Widget _result(
      BuildContext context, String message, double amount, String image) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      padding: EdgeInsets.all(32.sp),
      decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(32))),
      child: Column(
        children: [
          Text(message,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black)),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Text('You Get \$$amount',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black)),
        ],
      ),
    );
  }
}
