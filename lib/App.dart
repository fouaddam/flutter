




import 'package:flutter/material.dart';
import 'package:untitled1/Entities_views/User.dart';

class App extends StatelessWidget {
  const App({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {'/Users':(context)=>User()},
      initialRoute:'/Users' ,
    );
  }


}