
import 'package:flutter/material.dart';

import '../Custom_views/RF_InputText.dart';

class App extends StatelessWidget {
  const App({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:Column(
            children: [
              RF_inputText(),
              SizedBox(height: 20),
              RF_inputText(),
              SizedBox(height: 20),


            ],
          ),
        ),
      ),

    )
    ;
  }

}