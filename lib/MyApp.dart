import 'package:flutter/material.dart';
import 'package:pfe/pages/userlist.dart';
import 'package:pfe/screens/admin_screen.dart';
import 'package:pfe/screens/home_screen.dart';
import 'package:pfe/screens/welcome_screen.dart';
import 'package:pfe/services/loginService.dart';
import 'package:pfe/widgets/FormRV.dart';
import 'package:pfe/widgets/Service_wid.dart';
import 'package:pfe/widgets/Formation_wid.dart';
import 'package:pfe/widgets/admin.dart';
import 'package:pfe/widgets/chatbot.dart';
import 'package:provider/provider.dart';
import 'models/bar.dart';
import 'signup.dart';
import 'signin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(
                create: (_) => LoginService()
            ),


          ],
                child:MaterialApp(
      title: 'intelligent security it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF212121),
        accentColor: Color(0xFFD8ECF1),
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.system, // device controls theme
      initialRoute: '/',
      routes: {
        '/': (context) =>HomeScreen(),
        '/home': (context) => HomeScreen(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/service': (context) => Service(),
        '/formation': (context) => Formation_wid(),
        '/form': (context) => FormRV(),
        '/admin': (context) =>admin(),
        '/bar': (context) =>NavigationView(),

        '/userlist': (context) =>UserList(),
        //'/adminscreen': (context) =>Adminscreen(),
      },

    )
  )
  );
}

