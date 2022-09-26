




import 'package:flutter/material.dart';
import 'package:untitled1/Entities_views/LoginPhoneView.dart';


import 'Entities_views/Register.dart';
import 'Entities_views/User.dart';
import 'Entities_views/test.dart';


class App extends StatelessWidget {
  const App({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: { '/Users':(context)=>User(),
                '/Register':(context)=>Register(),
                '/test':(context)=>test(),
                '/loginPhoneview':(context)=>LoginPhoneView()},
      initialRoute:'/loginPhoneview' ,
    );
  }


}

