

import 'package:flutter/material.dart';

import '../Custom_views/RF_InputText.dart';

class Register extends StatelessWidget{

  Register({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
        toolbarHeight: 25,
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 60),
            RF_inputText( SLabelName: 'inserta el usuario'),
            SizedBox(height: 10),
            RF_inputText( SLabelName: 'inserta La contraseña'),
            SizedBox(height: 10),
            RF_inputText( SLabelName: 'repite la contraseña'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Respond to button press
                  },

                  child: Text("Aceptar "),

                ),

                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancelar "),
                )

              ],
            )

          ],
        ),
      ),

    );
  }
}