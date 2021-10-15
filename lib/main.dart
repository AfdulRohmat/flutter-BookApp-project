import 'package:book_app/views/constants/color_constant.dart';
import 'package:book_app/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ANTI ROTATION
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final ThemeData theme = ThemeData();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: kMainColor),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent),
      home: HomeScreen(),
    );
  }
}
