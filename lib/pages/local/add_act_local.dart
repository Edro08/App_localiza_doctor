import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AdicionarLocal extends StatefulWidget {
  const AdicionarLocal({Key? key, this.index}) : super(key: key);
  final dynamic index;
  //1 es para añadir nuevo registro
  //2 es para actualizar un registro ya existente

  @override
  State<AdicionarLocal> createState() => _AdicionarLocal();
}

class _AdicionarLocal extends State<AdicionarLocal> {
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
    return Container();
  }

  Body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          appBarAdicionarHospital(),
          AgregarCodigo(),
          AgregarNombreHospital(),
          ListadoLocales(),
          DireccionHospital()
        ],
      ),
    );
  }

  Widget AgregarCodigo() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Codigo hospital',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            hintText: 'Ingrese Código',
          ),
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }

  Widget AgregarNombreHospital() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Nombre Hospital',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            hintText: 'Ingrese Nombre del Hospital/Clinica',
          ),
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }

  Widget ListadoLocales() {
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
          icon: const Icon(Icons.arrow_drop_down),
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

  Widget DireccionHospital() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Dirección',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            hintText: 'Ingrese Dirección',
          ),
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
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
