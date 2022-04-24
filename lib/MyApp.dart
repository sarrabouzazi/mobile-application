import 'package:flutter/material.dart';
import 'package:pfe/screens/home_screen.dart';
import 'package:pfe/widgets/FormRV.dart';
import 'package:pfe/widgets/Service_wid.dart';
import 'package:pfe/widgets/Formation_wid.dart';
import 'signup.dart';
import 'signin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get service => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'intelligent security it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF212121),
        accentColor: Color(0xFFD8ECF1),
        brightness: Brightness.dark,
      ),
      routes: {
        '/home': (context) => HomeScreen(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/service': (context) => Service(),
        '/formation': (context) => Formation_wid(),
        '/form': (context) => FormRV(),
      },
      home: HomeScreen(),
    );
  }
}
