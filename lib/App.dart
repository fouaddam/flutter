




import 'package:flutter/material.dart';



import 'Entities_views/Register.dart';
import 'Entities_views/User.dart';



class App extends StatelessWidget {
  const App({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: { '/Users':(context)=>User(),
                '/Register':(context)=>Register(),

                },
      initialRoute:'/loginPhoneview' ,
    );
  }


}

