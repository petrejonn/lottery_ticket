import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NumbersGrid extends StatelessWidget {
  const NumbersGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 6.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.sp)),
          color: Theme.of(context).backgroundColor),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('02:00 PM',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Single',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Icon(Icons.expand_more)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    mainAxisSpacing: 4.h,
                    crossAxisSpacing: 8.w),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Text(
                    (index + 1).toString(),
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 13.sp,
                        color: Colors.grey.shade600),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
