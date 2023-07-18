import 'package:design_in_flutter/screens/basic_design.dart';
import 'package:design_in_flutter/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scrollDesingScreen',
      routes: {
        'basicDesingScreen': (_) => const BasicDesignScreen(),
        'scrollDesingScreen': (_) => const ScrollDesignScreen(),
      },
    );
  }
}
