import 'package:app_localiza_doctor/pages/contenedor.dart';
import 'package:flutter/material.dart';

class HomeGestion extends StatefulWidget {
  const HomeGestion({super.key});

  @override
  State<HomeGestion> createState() => _HomeGestionState();
}

class _HomeGestionState extends State<HomeGestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarGestion(),
      body: bodyGestion(),
    );
  }

  appBarGestion() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Menú Principal",
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
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }

  Widget bodyGestion() {
    return Column(
      children: [
        imagenGestion(),
        btnGestionDoctores(),
        btnGestionEspecialidas(),
        btnGestionLocales(),
        btnGestionDoctorLocal()
      ],
    );
  }

  Widget imagenGestion() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
    );
  }

  Widget btnGestionDoctores() {
    return Column(
      children: [
        Center(
          child: MaterialButton(
            minWidth: 40.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contenedor()));
            },
            color: Colors.amber,
            child:
                const Text('Ingresar', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget btnGestionEspecialidas() {
    return Column(
      children: [
        Center(
          child: MaterialButton(
            minWidth: 40.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contenedor()));
            },
            color: Colors.amber,
            child:
                const Text('Ingresar', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget btnGestionLocales() {
    return Column(
      children: [
        Center(
          child: MaterialButton(
            minWidth: 40.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contenedor()));
            },
            color: Colors.amber,
            child:
                const Text('Ingresar', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget btnGestionDoctorLocal() {
    return Column(
      children: [
        Center(
          child: MaterialButton(
            minWidth: 40.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contenedor()));
            },
            color: Colors.amber,
            child:
                const Text('Ingresar', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
