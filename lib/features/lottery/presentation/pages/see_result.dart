import 'package:flutter/material.dart';
import 'package:lottery_ticket/features/lottery/presentation/pages/result.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/app_background.dart';
import 'package:sizer/sizer.dart';

class SeeResultPage extends StatelessWidget {
  const SeeResultPage({
    Key? key,
  }) : super(key: key);
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
            'See Result',
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Container(
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(horizontal: 16.sp, vertical: 48.sp),
                decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(20.sp))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.sp),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            focusColor: const Color(0XFFFFFFFF),
                            prefixIcon: Icon(Icons.ac_unit),
                            labelText: 'Jackpots',
                            suffixIcon: Icon(Icons.expand_more),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.sp))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.sp),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            focusColor: const Color(0XFFFFFFFF),
                            prefixIcon: Icon(Icons.calendar_today_rounded),
                            labelText: DateTime.now().toString(),
                            suffixIcon: Icon(Icons.date_range),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.sp))),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0.sp),
                          child: Text('Enter Your Number',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 12.0.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _number(context, '05'),
                            _number(context, '09'),
                            _number(context, '12'),
                            _number(context, '18'),
                            _number(context, '21')
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 2.h,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.sp))),
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          'See Result',
                          style: Theme.of(context).textTheme.button?.copyWith(
                              fontSize: 13.sp,
                              color: Theme.of(context).backgroundColor),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultPage(
                                      numbers: '12, 18, 22, 26,30',
                                    )),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Widget _number(BuildContext context, String value) {
    return Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey)),
      child: Text(
        value,
        style:
            Theme.of(context).textTheme.headline6?.copyWith(color: Colors.grey),
      ),
    );
  }
}
