import 'package:design_in_flutter/screens/basic_design.dart';
import 'package:design_in_flutter/screens/home_screen.dart';
import 'package:design_in_flutter/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'homeScreen',
      routes: {
        'basicDesingScreen': (_) => const BasicDesignScreen(),
        'scrollDesingScreen': (_) => const ScrollDesignScreen(),
        'homeScreen': (_) => const HomeScreen(),
      },
    );
  }
}
