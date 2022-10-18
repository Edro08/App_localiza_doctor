import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:app_localiza_doctor/pages/doctor/add_act_doctor.dart';

class Add_Act_Doctor extends StatefulWidget {
  const Add_Act_Doctor({super.key});

  @override
  State<Add_Act_Doctor> createState() => _Add_Act_DoctorState();
}

class _Add_Act_DoctorState extends State<Add_Act_Doctor> {
  List<String> listMunicipio = <String>[
    '1-Ahuachapán',
    '2-Santa Ana',
    '3-Sonsonate',
    '4-La Libertad',
    '5-Chalatenango',
    '6-Cuscatlán',
    '7-San Salvador',
    '8-La paz',
    '9-Cabañas',
    '10-San Vicente',
    '11-Usulután',
    '12-San Miguel',
    '13-Morazán',
    '14-La unión'
  ];
  late String dropdownValueMuni;

  List<String> listEspecialidad = <String>[
    '1-Pediatría',
    '2-Cardiología',
    '3-Neumología',
    '4-Ginecología',
    '5-Otorrinolaringología',
    '6-Urología',
    '7-Endocrinología',
    '8-Dermatología.',
    '9-Odontología',
    '10-Medicina general',
    '11-Oftalmología',
    '12-Radiología'
  ];
  late String dropdownValueEspe;
  @override
  void initState() {
    dropdownValueMuni = listMunicipio.first;
    dropdownValueEspe = listEspecialidad.first;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarAddDoctor(),
      body: bodyAddDoctor(),
    );
  }

  appBarAddDoctor() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Adicionar/Actualizar doctor",
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

  bodyAddDoctor() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Jvm(),
          EspecialidadDoctor(),
          NombresDoctor(),
          ApellidosDoctor(),
          DuiDoctor(),
          MunicipioDoctor(),
          FechaNac(),
          CorreoDoctor(),
          TelefonoDoctor(),
          WhatsappDoctor(),
          btnAdicionar(),
          btnCancelarr(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget Jvm() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'JVM',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.nature_people),
            hintText: "Ingrese su JVM"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget NombresDoctor() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Nombres',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
            hintText: "Ingrese sus nombres"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget ApellidosDoctor() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Apellidos',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
            hintText: "Ingrese sus apellidos"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget DuiDoctor() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'DUI',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.numbers_sharp),
            hintText: "Ingrese su DUI"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget FechaNac() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Fecha nacimiento',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.date_range),
            hintText: "Ingrese su fecha de nacimiento"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget CorreoDoctor() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Email',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
            hintText: "Ingrese su Email"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget TelefonoDoctor() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Teléfono',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.phone),
            hintText: "Ingrese su teléfono"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget WhatsappDoctor() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: TextField(
        //maxLength: 20,
        decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'WhatsApp',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.whatsapp),
            hintText: "Ingrese su WhatsApp"),
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }

  Widget EspecialidadDoctor() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.amber)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: DropdownButton<String>(
                  value: dropdownValueEspe,
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
                      dropdownValueEspe = value!;
                    });
                  },
                  items: listEspecialidad
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget MunicipioDoctor() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.amber)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: DropdownButton<String>(
                  value: dropdownValueMuni,
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
                      dropdownValueMuni = value!;
                    });
                  },
                  items: listMunicipio
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

/*
  Widget Dropdown() {
    return Container(
      //padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: Colors.amber),
        
         //<-- SEE HERE
      ),
      child: DropdownButton<String>(
        style: const TextStyle(color: Colors.black, fontSize: 16),

        value: dropdownValueMuni,
          dropdownColor: Colors.amber, //<-- SEE HERE
        onChanged: (String? newValue) {
          setState(() {
            dropdownValueMuni = newValue!;
          });
        },
        items: listMunicipio.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
            ),
          );
        }).toList(),
      ),
    );
  }*/
  Widget btnAdicionar() {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber,
            onPrimary: Colors.white,
            padding: const EdgeInsets.all(10.0),
          ),
          onPressed: () {
            //Navigator.push(context,
            //  MaterialPageRoute(builder: (context) => const HomeGestion()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FeatherIcons.checkCircle,
                color: Colors.black,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Confirmar', style: TextStyle(color: Colors.black)),
            ],
          )),
    );
  }

  Widget btnCancelarr() {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.white,
            padding: const EdgeInsets.all(10.0),
          ),
          onPressed: () {
            //Navigator.push(context,
            //  MaterialPageRoute(builder: (context) => const HomeGestion()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FeatherIcons.delete,
                color: Colors.black,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Cancelar', style: TextStyle(color: Colors.black)),
            ],
          )),
    );
  }
}
