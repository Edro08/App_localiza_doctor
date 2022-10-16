import 'package:app_localiza_doctor/pages/gestion/home_gestion.dart';
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
    return Column(children: [
      imagenLogin(),
      emailLogin(),
      claveLogin(),
      btnIniciarSession(),
      olvidasteClave()
    ]);
  }

  Widget imagenLogin() {
    return Container();
  }

  Widget emailLogin() {
    return Container();
  }

  Widget claveLogin() {
    return Container();
  }

  Widget btnIniciarSession() {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber,
            onPrimary: Colors.red,
            padding: const EdgeInsets.all(10.0),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeGestion()));
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
          )),
    );
  }

  Widget olvidasteClave() {
    return Container();
  }
}
