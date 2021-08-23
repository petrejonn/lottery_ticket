import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NumberInputField extends StatelessWidget {
  const NumberInputField({Key? key, required this.value, required this.index})
      : super(key: key);
  final String value;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 9.h,
        width: 13.w,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(20.sp)),
        child: Center(
            child: Text(
          value,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).primaryColor,
              ),
        )),
      ),
    );
  }
}
