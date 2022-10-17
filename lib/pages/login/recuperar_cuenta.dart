import 'package:app_localiza_doctor/pages/login/verificacion_cuenta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class RecuperarCuenta extends StatefulWidget {
  const RecuperarCuenta({super.key});

  @override
  State<RecuperarCuenta> createState() => _RecuperarCuentaState();
}

class _RecuperarCuentaState extends State<RecuperarCuenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          appBarRecuperarCuenta(),
          imagenRecuperarCuenta(),
          emailRecuperarCuenta(),
          btnRecuperarCuenta()
        ],
      ),
    );
  }

  Widget imagenRecuperarCuenta() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.9,
      height: MediaQuery.of(context).size.width / 1.9,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/Images/doc.png"),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
    );
  }

  Widget emailRecuperarCuenta() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Correo',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
            hintText: "Ingrese su Correo"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget btnRecuperarCuenta() {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber,
            onPrimary: Colors.red,
            padding: const EdgeInsets.all(10.0),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VerificacionCuenta()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FeatherIcons.logIn,
                color: Colors.black,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Enviar', style: TextStyle(color: Colors.black)),
            ],
          )),
    );
  }

  appBarRecuperarCuenta() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Recuperar Contraseña",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            MaterialButton(
              minWidth: 30.0,
              height: 40.0,
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.amber,
              child: const Icon(
                FeatherIcons.logOut,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }
}
