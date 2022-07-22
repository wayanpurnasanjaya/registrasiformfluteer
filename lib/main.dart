import 'package:flutter/material.dart';
import 'ui_view/Registrasi.dart';
import 'ui_view/splashscreen.dart';
import 'ui_view/Login.dart';
import 'package:registrasiformfluteer/ui_view/Registrasi.dart';
import 'package:registrasiformfluteer/ui_view/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.android, color: Colors.purple,size: 65,),
            SizedBox(height:200,),
            Text("Selamat Datang Di Tugas Form Registrasi",style: TextStyle(color:Colors.white,fontSize: 22)),
            SizedBox(height: 40,),
            Text("Silahkan Lakukan Registrasi Terlebih Dahulu", style:TextStyle(color: Colors.white,fontSize: 18)),
            SizedBox(height:20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: 210,
                  color: Colors.white,
                  textColor: Colors.lightBlue,

                  child: Text("Registrasi",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

                  onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Registrasi()
                  ));
                  },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: 210,
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
                  onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>Login()
                  ));
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

