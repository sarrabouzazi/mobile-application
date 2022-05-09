import 'package:flutter/material.dart';
import 'package:pfe/screens/home_screen.dart';
import 'MyApp.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// flutter run --no-sound-null-safety
@override
Widget build(BuildContext context) {
  return MaterialApp(
      title: 'Intelligent security it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        "/MyApp": (BuildContext context) => new MyApp()
      });
}