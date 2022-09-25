
import 'package:flutter/material.dart';

import '../Custom_views/RF_InputText.dart';
import '../Custom_views/RF_InputText.dart';
import '../Custom_views/RF_InputText.dart';
import '../Custom_views/RF_InputText.dart';

class User extends StatelessWidget {
    User({Key? key}):super(key:key);

      final RF_inputText input1= RF_inputText( SLabelName: 'inserta el usuario');
      final RF_inputText input2= RF_inputText( SLabelName: 'inserta La contraseña');


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          toolbarHeight: 25,
        ),
        body: Center(
          child:Column(
            children: [
              SizedBox(height: 60),
              input1,
              SizedBox(height: 10),
              input2,
              SizedBox(height: 10),

              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Respond to button press
                      Navigator.of(context).pushNamed('/test');
                      print(input2.myController.text);
                    },

                    child: Text("Login "),
                  ),

                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Register');
                    },
                    child: Text("Registro"),
                  )

                ],
              )

            ],
          ),
        ),

    );
  }

}