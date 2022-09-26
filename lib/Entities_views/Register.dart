

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Custom_views/RF_InputText.dart';
import '../Custom_views/RF_InputText.dart';
import '../Custom_views/RF_InputText.dart';

class Register extends StatelessWidget{

  Register({Key? key}):super(key:key);
  RF_inputText input1=RF_inputText( SLabelName: 'inserta el usuario');
  RF_inputText input2=RF_inputText( SLabelName: 'inserta La contraseña');
  RF_inputText input3=RF_inputText( SLabelName: 'repite la contraseña');

  insert(String S1,String S2) async {

    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: input1.getText(),
        password: input2.getText(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

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
            input1,
            SizedBox(height: 10),
            input2,
            SizedBox(height: 10),
            input3,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    print("------>"+input1.getText());
                    if(input1.getText()==input2.getText()||
                        input1.getText().isEmpty){
                      print("contraseña fallida"+input1.getText());
                      return;
                    }
                    insert(input1.getText(),input2.getText());
                  },

                  child: Text("Aceptar "),



                ),

                OutlinedButton(onPressed: () {
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