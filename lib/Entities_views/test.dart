

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final doc=FirebaseFirestore.instance.doc("/test/iNGYSgdSOrsaK9Hwrj0e");

    // TODO: implement build
    return Scaffold(
      body: Center(
        child:StreamBuilder<DocumentSnapshot<Map<String,dynamic>>>(
          stream: doc.snapshots(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
              return Text("datos no encontrados");
            }
            final docsanp=snapshot.data!;
            return Text(docsanp['name']);
          },

        ),
      ),
    );
  }
  
}