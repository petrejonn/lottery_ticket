import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
            height: 120,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.2,
                    vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.ac_unit,
                        color: Theme.of(context).primaryColor,
                        size: 32,
                      ),
                    ),
                    Icon(
                      Icons.roofing_outlined,
                      color: Theme.of(context).backgroundColor,
                      size: 32,
                    ),
                    Icon(
                      Icons.person_outline,
                      color: Theme.of(context).backgroundColor,
                      size: 32,
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
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(size.width / 2, 10.0, size.width, size.height - 30);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
