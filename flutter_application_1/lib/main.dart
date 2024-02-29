import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Color.fromARGB(255, 209, 109, 226)),
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
    );
  }
}
