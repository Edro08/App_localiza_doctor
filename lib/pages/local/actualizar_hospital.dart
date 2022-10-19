import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ActualizarHospital extends StatefulWidget {
  ActualizarHospital({Key? key, this.index}) : super(key: key);
  final dynamic index;

  @override
  State<ActualizarHospital> createState() => _ActualizarHospitalState();
}

class _ActualizarHospitalState extends State<ActualizarHospital> {
  List<String> listFiltro = <String>[
    'Onedhddgdgdgdgdgd',
    'Two',
    'Three',
    'Four'
  ];
  late String dropdownValue;

  @override
  void initState() {
    dropdownValue = listFiltro.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }

  body() {
    return SingleChildScrollView(
      child: Column(
        children: [appBarAdicionarHospital(), NombreHospital(), Listado()],
      ),
    );
  }

  Widget NombreHospital() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          //maxLength: 20,
          decoration: InputDecoration(
              //icon: Icon(Icons.favorite),
              labelText: 'Nombre Hospitales',
              fillColor: Colors.white,
              filled: true,
              //errorText: 'Error message',
              border: OutlineInputBorder(),
              hintText: "Ingrese el Nombre del Hospital"),
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }

  Widget Listado() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: DropdownButton<String>(
          value: dropdownValue,
          elevation: 16,
          style: const TextStyle(color: Colors.black, fontSize: 16),
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          dropdownColor: Colors.amber,
          underline: Container(
            height: 0,
          ),
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: listFiltro.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

  appBarAdicionarHospital() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              widget.index == 1
                  ? "Adicionar Hospital"
                  : widget.index == 2
                      ? "Actualizar Hospital"
                      : "",
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
