import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/firebase_options.dart';
import 'package:flutter_news/pages/home_page.dart';
import 'package:flutter_news/pages/landing_page.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  var auth = FirebaseAuth.instance;
  var isLogin = false;


  checkIfLogin() async {
    auth.authStateChanges().listen((User? user){
      if(user!=null && mounted){
        setState(() {
          isLogin = true;
        });
      }
    });
  }

  @override
  void initState(){
    checkIfLogin();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: isLogin? const HomePage() : const LandingPage(),
    );
  }
}


