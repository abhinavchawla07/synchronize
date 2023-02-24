import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:synchronize/constants.dart';
import 'package:synchronize/pages/home/home.dart';
import 'package:synchronize/theme.dart';

import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.title,
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.pageRoute,
      routes: Constants.routes,
    );
  }
}
