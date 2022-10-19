import 'package:app_localiza_doctor/pages/local/actualizar_hospital.dart';
import 'package:app_localiza_doctor/pages/local/add_act_local.dart';
import 'package:app_localiza_doctor/pages/local/deshabilitar_local.dart';
import 'package:app_localiza_doctor/pages/local/detalle_local.dart';
import 'package:flutter/material.dart';

class ListadoLocal extends StatefulWidget {
  const ListadoLocal({Key? key, this.accion}) : super(key: key);
  final dynamic accion;

  @override
  State<ListadoLocal> createState() => _ListadoLocalState();
}

class _ListadoLocalState extends State<ListadoLocal> {
  List<String> listFiltro = <String>['One', 'Two', 'Three', 'Four'];
  late String dropdownValue;
  String accion = "";
  String titulo = "";

  final items = [
    'Hospital Santa Teresa',
    'Hospital Benjamin Bloom',
    'Hospital Rosales',
    'Hospital de Maternidad',
    'Clinica Paniagua'
  ];

  @override
  void initState() {
    dropdownValue = listFiltro.first;
    super.initState();
    accion = widget.accion;

    switch (accion) {
      case "Deshabilitar":
        titulo = "Deshabilitar Hospital";
        break;
      case "Adiccionar":
        titulo = "Adiccionar Hospital";
        break;
      case "Actualizar":
        titulo = "Actualizar Hospital";
        break;
      case "Listar":
        titulo = "Lista de Hospital";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarListarHospital(),
      body: Column(
        children: [Expanded(child: bodyHospital())],
      ),
    );
  }

  Widget bodyHospital() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            filtroText(),
            line(),
            filtro(),
            const SizedBox(
              height: 25,
            ),
            listadoText(),
            line(),
            const SizedBox(
              height: 10,
            ),
            ListadoHospital(),
          ],
        ),
      ),
    );
  }

  Widget filtroText() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8.0, left: 12.0),
      child: Text(
        "Buscar por municipio",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget line() {
    return Container(
      height: 1,
      decoration: const BoxDecoration(color: Colors.grey),
    );
  }

  Widget filtro() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.amber)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items:
                      listFiltro.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          MaterialButton(
            minWidth: 30.0,
            height: 50.0,
            color: Colors.amber,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (accion == "Deshabilitar")
                          ? const DeshabilitarHospital()
                          : (accion == "Actualizar")
                              ? AdicionarLocal(
                                  index: 2,
                                )
                              : const DetalleHospital()));
            },
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  AppBarListarHospital() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Listado de Hospitales",
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

  Widget ListadoHospital() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 20),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            // padding: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.amber,
                  ),
                )),
            child: ListTile(
              /*
                shape: RoundedRectangleBorder( //<-- SEE HERE
              side: BorderSide(width: 2),
              borderRadius: BorderRadius.circular(20),
             ),*/
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(
                  items[index],
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              title: Text(
                style: TextStyle(color: Colors.black, fontSize: 17),
                'Nombre: ${items[index]}',
              ),
              subtitle: Text(
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                  'Information: Hospital Information'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }

  Widget listadoText() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8.0, left: 12.0),
      child: Text(
        "Seleccionar Hospital",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
