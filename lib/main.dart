import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'day15.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 100 days',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Day15ClipRRect(title: 'Day 15: ClipRRect, ClipRect'),
    );
  }
}