import 'package:flutter/material.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/bottom_nav_bar.dart';
import 'package:lottery_ticket/features/lottery/presentation/widgets/lottery_list_view.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background/background.jpg'),
          ),
        ),
        child: Container(
          color: Theme.of(context).primaryColor.withOpacity(0.9),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5.h, top: 2.h),
                  child: Text(
                    'Lottery Ticket',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.w800),
                  ),
                ),
                Expanded(child: LotteryListView()),
                BottomNavBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
