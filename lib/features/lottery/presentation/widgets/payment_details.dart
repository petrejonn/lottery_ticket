import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(32))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(6.0.sp),
            child: Text('Selected Number',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.grey.shade600)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0.sp, bottom: 12.sp),
            child: Text('12, 18, 22, 26,30',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.w900)),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text('Numbers of Draws',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.grey.shade600)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: DrawNumber(value: '1'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: DrawNumber(value: '2'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: DrawNumber(value: '3'),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Possible Winners',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.grey.shade600)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('\$100 - \$200',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

class DrawNumber extends StatelessWidget {
  const DrawNumber({Key? key, required this.value}) : super(key: key);
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Theme.of(context).primaryColor),
      child: Text(
        value,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
