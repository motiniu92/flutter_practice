import 'package:flutter/material.dart';
import 'package:test_projects/screens/pageOne.dart';
import 'package:test_projects/screens/pageThree.dart';
import 'package:test_projects/screens/pageTwo.dart';

class MyRouters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => PageA(),
        '/pageB': (context) => PageB(),
        '/pageC': (context) => PageC(),
      },
      initialRoute: '/',
    );
  }
}
