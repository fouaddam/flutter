
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RF_inputText extends StatelessWidget{
  final String sValorInicial;
  final int iLenght;
  final String SLabelName;
  RF_inputText({Key? key, this.sValorInicial="",this.iLenght=20, required this.SLabelName}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        cursorColor: Colors.white70,
        initialValue: sValorInicial,
        maxLength: iLenght,
        decoration: InputDecoration(
          labelText: SLabelName,
          labelStyle: TextStyle(
            color: Color(0xFF6200EE),
          ),
          suffixIcon: Icon(
            Icons.account_circle,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6200EE)),
          ),
        ),
      ),
    );
  }




}