import 'package:app_localiza_doctor/pages/doctor_local/listado_doctor_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class GestionDoctorLocal extends StatefulWidget {
  const GestionDoctorLocal({super.key});

  @override
  State<GestionDoctorLocal> createState() => _GestionDoctorLocalState();
}

class _GestionDoctorLocalState extends State<GestionDoctorLocal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarGestionDoctorLocal(),
      body: bodyGestionDoctorLocal(),
    );
  }

  appBarGestionDoctorLocal() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Gestionar Doctor-Local",
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

  Widget bodyGestionDoctorLocal() {
    return SingleChildScrollView(
      child: Column(
        children: [
          btnAdicionar(),
          btnActualizar(),
          btnDeshabilitar(),
          btnListar(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget btnAdicionar() {
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
                    builder: (context) => const ListadoDoctorLocal()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FeatherIcons.plusSquare,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Adicionar', style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }

  Widget btnActualizar() {
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
                    builder: (context) => const ListadoDoctorLocal()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FeatherIcons.rotateCcw,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Actualizar', style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }

  Widget btnDeshabilitar() {
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
                    builder: (context) => const ListadoDoctorLocal()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FeatherIcons.xSquare,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Deshabilitar', style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }

  Widget btnListar() {
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
                    builder: (context) => const ListadoDoctorLocal()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FeatherIcons.list,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Listar', style: TextStyle(color: Colors.white)),
            ],
          )),
    );
  }
}
