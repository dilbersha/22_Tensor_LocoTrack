import 'package:flutter/material.dart';
import 'package:tensor/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tensor/screens/language_screen.dart';


Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tensor',
      debugShowCheckedModeBanner: false,
      home: Language_Screen(),
    );
  }
}
