import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery_ticket/core/theme/app_theme.dart';
import 'package:lottery_ticket/features/lottery/presentation/blocs/jackpot/jackpot_cubit.dart';
import 'package:lottery_ticket/features/lottery/presentation/pages/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JackpotCubit(),
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          locale: DevicePreview.locale(context), // Add the locale here
          builder: DevicePreview.appBuilder,
          title: 'Lottery Ticket',
          theme: AppTheme.lightTheme,
          home: HomePage(),
        );
      }),
    );
  }
}
