import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/background/background.jpg'),
        ),
      ),
      child: Container(
          color: Theme.of(context).primaryColor.withOpacity(0.9), child: child),
    );
  }
}
