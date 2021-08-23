import 'package:flutter/material.dart';
import 'package:lottery_ticket/features/lottery/domain/entities/jackpot.dart';
import 'package:lottery_ticket/features/lottery/presentation/pages/payment.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/app_background.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/number_input_field.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/numbers_grid.dart';
import 'package:sizer/sizer.dart';

class NumberSelectPage extends StatelessWidget {
  const NumberSelectPage({Key? key, required this.jackpot}) : super(key: key);
  final Jackpot jackpot;

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
              size: 16.sp,
            ),
          ),
          leadingWidth: 24.sp,
          backgroundColor: Colors.transparent,
          title: Text(
            'Choose Number',
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: Text(
                'Choose',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: Text(
                '5 Numbers',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: const Color(0XFFFFFFFF)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NumberInputField(
                    value: '12',
                    index: 0,
                  ),
                  NumberInputField(
                    value: '18',
                    index: 1,
                  ),
                  NumberInputField(
                    value: '22',
                    index: 2,
                  ),
                  NumberInputField(
                    value: '26',
                    index: 3,
                  ),
                  NumberInputField(
                    value: '30',
                    index: 4,
                  ),
                ],
              ),
            ),
            Expanded(
              child: NumbersGrid(),
              flex: 7,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
                width: double.infinity,
                color: Theme.of(context).backgroundColor,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.sp))),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Make a Payment',
                    style: Theme.of(context).textTheme.button?.copyWith(
                          fontSize: 13.sp,
                        ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentPage()),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
