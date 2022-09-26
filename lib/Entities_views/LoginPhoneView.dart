
import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Custom_views/RF_InputText.dart';

class LoginPhoneView extends StatefulWidget{
  @override
  State<LoginPhoneView> createState() => _LoginPhoneViewState();
}


class _LoginPhoneViewState extends State<LoginPhoneView> {

 final RF_inputText inputPhone=new RF_inputText(SLabelName: "Numero Telefono ");
 final RF_inputText inputCode=new RF_inputText(SLabelName: "Codigo de verificacion ");
 bool waitingForSms=false;

 void EnviarTelefono(){

   setState(() {
     waitingForSms=true;
   });
 }


 EnviarCodigo(String phoneNumber) async {

   await FirebaseAuth.instance.verifyPhoneNumber(
     phoneNumber: phoneNumber,
     verificationCompleted: (PhoneAuthCredential credential) async {
       await FirebaseAuth.instance.signInWithCredential(credential);
       Navigator.of(context).popAndPushNamed('/User');
     },
     verificationFailed: (FirebaseAuthException e) {

       showDialog(
           context: context,
            builder: (context)=>AlertDialog(
              title: Text(""),
              content: Text(""),
              actions: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    // foreground
                  ),
                  onPressed: () { },
                  child: Text('Ok'),
                )
              ],
            )



       );

     },
     codeSent: (String verificationId, int? resendToken) {
       setState(() {
         waitingForSms=true;
       });


     },
     codeAutoRetrievalTimeout: (String verificationId) {},
   );

 }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Vericacion"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Expanded(child: inputPhone),
                  OutlinedButton(
                    onPressed: () {
                      EnviarTelefono();
                    },
                    child: Text("Enviar telefono"),
                  )
                ],
            ),
            Row(
              children: [
               if(waitingForSms)Expanded(child: inputCode),
                if(waitingForSms)OutlinedButton(
                onPressed: () {
                  EnviarCodigo(inputPhone.getText());
    },
        child: Text("Verivicar "),
    )
              ],
            )
          ],
        ),
      ),
    );
  }
}