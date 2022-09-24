

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Custom_views/RF_InputText.dart';

class Register extends StatelessWidget{

  Register({Key? key}):super(key:key);

  insert() async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "email@Address.com",
        password: "password",
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
    final docs=FirebaseFirestore.instance.doc('/test/iNGYSgdSOrsaK9Hwrj0e');



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
                    insert();
                  },

                  child: Text("Aceptar "),



                ),

                OutlinedButton(onPressed: () {


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