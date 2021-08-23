import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery_ticket/features/lottery/presentation/blocs/jackpot/jackpot_cubit.dart';
import 'package:lottery_ticket/features/lottery/presentation/pages/number_select.dart';
import 'package:sizer/sizer.dart';

class LotteryListView extends StatelessWidget {
  const LotteryListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<JackpotCubit>(context).getJackposts();
    return Container(
      padding:
          EdgeInsets.only(left: 8.sp, right: 8.sp, top: 28.sp, bottom: 4.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.sp)),
          color: Theme.of(context).backgroundColor),
      child: BlocBuilder<JackpotCubit, JackpotState>(
        builder: (context, state) {
          if (state is JackpotLoading) {
            return Center(child: Text((state as JackpotLoadError).message));
          } else if (state is JackpotLoaded) {
            final jackpots = (state).jackpots;
            return ListView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: jackpots.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            jackpots[index].logoUrl,
                            width: 28.sp,
                            height: 28.sp,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    jackpots[index].title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(),
                                  ),
                                  Text(
                                    'Jackpots',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(color: Colors.grey),
                                  ),
                                  Text(
                                    '\$ ' + jackpots[index].prize.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            flex: 3,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flag.fromString(
                                  jackpots[index].countryCode,
                                  height: 30.sp,
                                  width: 40.sp,
                                ),
                                Text(
                                  'Next Draw',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                          color: Colors.grey, fontSize: 7.sp),
                                ),
                                Text(jackpots[index].time,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                            fontWeight: FontWeight.bold)),
                              ],
                            ),
                            flex: 2,
                          ),
                          Container(
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.sp))),
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                'Play now',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    ?.copyWith(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NumberSelectPage(
                                        jackpot: jackpots[index]),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 11.0.sp),
                        child: Container(
                          width: double.infinity,
                          color: Colors.grey.withOpacity(0.7),
                          height: 0.5,
                        ),
                      )
                    ],
                  );
                });
          } else {
            return Center(
              child: SizedBox(
                  child: CircularProgressIndicator(), width: 100, height: 100),
            );
          }
        },
      ),
    );
  }
}
