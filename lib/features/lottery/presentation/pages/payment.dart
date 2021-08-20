import 'package:flutter/material.dart';
import 'package:lottery_ticket/features/lottery/presentation/pages/see_result.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/app_background.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/payment_details.dart';
import 'package:sizer/sizer.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

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
            'Payment',
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 56.0, bottom: 16),
              child: Text(
                '02:00 PM',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: PaymentDetails(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Total: \$10',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 12.w),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32))),
              color: Theme.of(context).backgroundColor,
              child: Text(
                'Payment Now',
                style: Theme.of(context).textTheme.button?.copyWith(
                    fontSize: 13.sp, color: Theme.of(context).primaryColor),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeeResultPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
