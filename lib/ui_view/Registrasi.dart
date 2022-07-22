// ignore: file_names
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  List<String> _agama = ['Islam','Kristen','Budha','Hindu','Konghucu'];
  String _nAgama = "Islam";
  int _groupValue1 = 0;

  TextEditingController nama = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController moto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrasi Form"),
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
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(8.0))
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
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: moto,
                  minLines: 3,
                  maxLines: 10,
                  decoration: InputDecoration(
                      hintText: 'Moto Hidup',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))
                  ),
                ),
              ),
              Row(children: [
                Radio(
                  onChanged: (int? i){
                    setState(() {
                      _groupValue1 = i!;
                    });
                  },
                  value: 0,
                  groupValue: _groupValue1,
                ),
                Text('Laki-Laki'),
                Radio(
                  onChanged: (int? i){
                    setState(() {
                      _groupValue1 = i!;
                    });
                  },
                  value: 1,
                  groupValue: _groupValue1,
                ),
                Text('Perempuan'),
              ],),
              Text("Agama : ",style: TextStyle(color:Colors.brown, fontSize: 16.0)),
              DropdownButtonFormField(
                onChanged: (String? value){
                  setState(() {
                    _nAgama = value!;
                  });
                },
                value: _nAgama,
                items: _agama.map((String value){
                  return DropdownMenuItem(child: Text(value),value:value,);
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Submit"),
                  onPressed: (){
                    Fluttertoast.showToast(
                        msg: "Nama Lengkap :"+nama.text.toString()+"\n"+
                            "Password :"+pass.text.toString()+"\n"+
                            "Moto hidup :"+moto.text.toString()+"\n"+
                            "Jenis Kelamin :"+((_groupValue1 == 0)?"Laki-laki": "Perempuan")+"\n"+
                            "Agama :"+_nAgama,
                        toastLength : Toast.LENGTH_SHORT,
                        gravity : ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor : Colors.red,
                        textColor : Colors.white,
                        fontSize: 16.0

                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

