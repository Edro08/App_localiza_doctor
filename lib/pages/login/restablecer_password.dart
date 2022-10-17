import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class RestablecerPassword extends StatefulWidget {
  const RestablecerPassword({super.key});

  @override
  State<RestablecerPassword> createState() => _RestablecerPasswordState();
}

class _RestablecerPasswordState extends State<RestablecerPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body(){
    return SingleChildScrollView(
      child: Column(
        children: [
          appBarRestablecerPassword(),
          imagenRestablecerPassword(),
          NewPassword(),
          NewPasswordConfir(),
          btnRestablecerPassword()
        ],
      ),
    );
  }

  Widget imagenRestablecerPassword() {
    return Container(
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
    );
  }

  Widget NewPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          //maxLength: 20,
          decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Contraseña',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock_outline),
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

  Widget NewPasswordConfir() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
      child: Container(
        child: TextField(
          //maxLength: 20,
          decoration: InputDecoration(
            //icon: Icon(Icons.favorite),
            labelText: 'Confirmar Contraseña',
            fillColor: Colors.white,
            filled: true,
            //errorText: 'Error message',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock_outline),
            hintText: "Confirme su Contraseña"
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

  Widget btnRestablecerPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 80, right: 80),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.red,
          padding: const EdgeInsets.all(10.0),
        ),
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RestablecerPassword())
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
            Text('Restablecer Contraseña', style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }

  appBarRestablecerPassword() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            const Text(
              "Restablecer Contraseña",
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
          ]
        )
      ),
    );
  }
}