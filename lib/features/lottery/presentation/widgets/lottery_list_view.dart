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
      padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 6.h, bottom: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
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
                            width: 40,
                            height: 40,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  jackpots[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Jackpot',
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
                            flex: 3,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Flag.fromString(
                                  jackpots[index].countryCode,
                                  height: 30.sp,
                                  width: 30.sp,
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
                          Expanded(
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32))),
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                'Play Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    ?.copyWith(fontSize: 9.sp),
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
                            flex: 2,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.grey.withOpacity(0.5),
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
