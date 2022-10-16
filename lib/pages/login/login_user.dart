import 'package:app_localiza_doctor/pages/gestion/home_gestion.dart';
import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Center(
          child: MaterialButton(
            minWidth: 40.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeGestion()));
            },
            color: Colors.amber,
            child:
                const Text('Ingresar', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget olvidasteClave() {
    return Container();
  }
}
