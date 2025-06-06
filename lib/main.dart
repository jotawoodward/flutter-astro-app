import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/my_app_state.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Astro App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 223, 224, 224)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

