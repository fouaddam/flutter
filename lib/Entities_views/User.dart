
import 'package:flutter/material.dart';

import '../Custom_views/RF_InputText.dart';

class User extends StatelessWidget {
  const User({Key? key}):super(key:key);

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
              RF_inputText( SLabelName: 'inserta el usuario'),
              SizedBox(height: 10),
              RF_inputText( SLabelName: 'inserta La contraseña'),
              SizedBox(height: 10),

              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Respond to button press
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