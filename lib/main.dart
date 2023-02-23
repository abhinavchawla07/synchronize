import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:synchronize/pages/home/home.dart';

import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp(
    title: 'Synchronize',
  ));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  final String? title;

  const MyApp({super.key, this.title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title ?? "",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(
        title: title,
      ),
    );
  }
}
