import 'dart:async';
import 'package:flutter/material.dart';
import '../main.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ Key? key , required this.title}) : super(key: key);
  final String title;
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}
class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }
  openSplashScreen() async {

    var durasiSplash = const Duration(seconds: 5);
    return Timer(durasiSplash, () {

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return HomePage(title: '',);
          })
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Image.asset(
          "images/monster.png",
          width: 500,
          height: 250,
        ),
      ),
    );
  }
}
