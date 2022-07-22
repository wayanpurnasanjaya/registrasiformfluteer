import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nama = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nama,
                  decoration: InputDecoration(
                    hintText: 'Nama Lengkap',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(8.0))
                  ),
                ),
              ),
              MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Submit"),
                  onPressed: (){
                    Fluttertoast.showToast(
                        msg: "Nama Lengkap :"+nama.text.toString()+"\n"+
                             "Password :"+pass.text.toString()+"\n",
                        toastLength : Toast.LENGTH_SHORT,
                        gravity : ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor : Colors.red,
                        textColor : Colors.white,
                        fontSize: 16.0
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
