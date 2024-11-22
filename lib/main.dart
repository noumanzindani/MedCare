import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medcare/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior()
          .copyWith(dragDevices: {PointerDeviceKind.mouse}),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
