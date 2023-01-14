import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_a_mess/registration.dart';
import 'package:not_a_mess/services/router.dart';

void main() {
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          fontFamily: "Georgia"
        ),
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate:  AppRouter().router.routerDelegate,
    ),
  );
}
