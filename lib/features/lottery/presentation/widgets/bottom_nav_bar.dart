import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).backgroundColor,
        child: ClipPath(
          clipper: BottomNavArc(),
          child: Container(
            color: Theme.of(context).primaryColor,
            height: 60.sp,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.2,
                    vertical: 6.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.sp),
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.ac_unit,
                        color: Theme.of(context).primaryColor,
                        size: 28.sp,
                      ),
                    ),
                    Icon(
                      Icons.roofing_outlined,
                      color: Theme.of(context).backgroundColor,
                      size: 28.sp,
                    ),
                    Icon(
                      Icons.person_outline,
                      color: Theme.of(context).backgroundColor,
                      size: 28.sp,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class BottomNavArc extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height);
    path.lineTo(0.0, size.height - 18.sp);
    path.quadraticBezierTo(
        size.width / 2, -40.0.sp, size.width, size.height - 18.sp);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
