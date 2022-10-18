import 'package:app_localiza_doctor/pages/gestion/gestion_doctor.dart';
import 'package:app_localiza_doctor/pages/gestion/gestion_doctor_local.dart';
import 'package:app_localiza_doctor/pages/gestion/gestion_especialidad.dart';
import 'package:app_localiza_doctor/pages/gestion/gestion_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

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
                FeatherIcons.logOut,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }

  Widget bodyGestion() {
    return SingleChildScrollView(
      child: Column(
        children: [
          imagenGestion(),
          btnGestionDoctores(),
          btnGestionEspecialidas(),
          btnGestionLocales(),
          btnGestionDoctorLocal(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget imagenGestion() {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
    );
  }

  Widget btnGestionDoctores() {
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
                MaterialPageRoute(builder: (context) => const GestionDoctor()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              Text('Gestionar Doctores', style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }

  Widget btnGestionEspecialidas() {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
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
                    builder: (context) => const GestionEspecialidad()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              Text('Gestionar Especialidades',
                  style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }

  Widget btnGestionLocales() {
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
                MaterialPageRoute(builder: (context) => const GestionLocal()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              Text('Gestionar Hospitales/Clinicas',
                  style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }

  Widget btnGestionDoctorLocal() {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
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
                    builder: (context) => const GestionDoctorLocal()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              Text('Asignar Doctores a Local',
                  style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }
}
