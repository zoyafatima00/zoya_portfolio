import 'dart:math';

import 'package:asad_portfolio/router/app_router.dart';
import 'package:asad_portfolio/values/values.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp.router(
        title: StringConst.APP_NAME,
        theme: AppTheme.lightThemeData,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
