import 'package:flutter/material.dart';
import '_pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blind Help',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Blind Help'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>  LoginPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tween = Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: Curves.easeInOut));
            var fadeAnimation = animation.drive(tween);
            return FadeTransition(
              opacity: fadeAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(seconds: 1),
        ),
      );
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background-load.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    'images/logo-blind-help.png',
                    height: 100,
                    width: 112.05,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'BLIND HELP',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
