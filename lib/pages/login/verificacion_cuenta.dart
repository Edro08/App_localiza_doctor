import 'package:app_localiza_doctor/pages/login/restablecer_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class VerificacionCuenta extends StatefulWidget {
  const VerificacionCuenta({super.key});

  @override
  State<VerificacionCuenta> createState() => _VerificacionCuentaState();
}

class _VerificacionCuentaState extends State<VerificacionCuenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body(){
    return SingleChildScrollView(
      child: Column(
        children: [
          appBarVerificarCuenta(),
          imagenVerificarCuenta(),
          emailVerificarCuenta(),
          btnVerificarCuenta()
        ],
      ),
    );
  }

  Widget imagenVerificarCuenta() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.9,
      height: MediaQuery.of(context).size.width / 1.9,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Images/doc.png"),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }

  Widget emailVerificarCuenta() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          //maxLength: 20,
          decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Codigo',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.verified_user),
            hintText: "Ingrese su Codigo"
          ),
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: Colors.black
          ),
        ),
      ),
    );
  }

  Widget btnVerificarCuenta() {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.red,
          padding: const EdgeInsets.all(10.0),
        ),
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RestablecerPassword())
          );
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
            Text('Verificar', style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }

  appBarVerificarCuenta() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            const Text(
              "Verificacion de Cuenta",
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
          ]
        )
      ),
    );
  }
}