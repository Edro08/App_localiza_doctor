import 'package:app_localiza_doctor/pages/gestion/home_gestion.dart';
import 'package:app_localiza_doctor/pages/login/recuperar_cuenta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        //appBarLogin(),
        imagenLogin(),
        emailLogin(),
        claveLogin(),
        btnIniciarSession(),
        olvidasteClave()
      ]),
    );
  }

  Widget imagenLogin() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
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
      ),
    );
  }

  Widget emailLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          //maxLength: 20,
          decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Usuario',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
            hintText: "Ingrese su Usuario"
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

  Widget claveLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, ),
      child: Container(
        child: TextField(
          obscureText: true,
          //maxLength: 20,
          decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Contraseña',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
            hintText: "Ingrese su Contraseña"
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

  Widget btnIniciarSession() {
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
            MaterialPageRoute(builder: (context) => const HomeGestion())
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
            Text('Ingresar', style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }

  Widget olvidasteClave() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "¿Olvidaste tu Contraseña?", 
              style: TextStyle(
                color: Colors.black,
                fontSize: 14
              )
            ),
          ),
          SizedBox(height: 5,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.white,
              padding: const EdgeInsets.all(10.0),
              elevation: 0
            ),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RecuperarCuenta())
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Restablecer tu Contraseña', 
                  style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  )
                ),
              ],
            )
          ),
        ],
      ),
    );
  }

  appBarLogin() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end, 
          children: [
            MaterialButton(
              minWidth: 30.0,
              height: 40.0,
              onPressed: () {
                //Navigator.pop(context);
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
