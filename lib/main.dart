import 'package:flutter/material.dart';
import 'package:smokefree_cal/pages/input_page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     theme: ThemeData(
          primaryColor: Color(0XFF1C1E48),
       scaffoldBackgroundColor: Color(0XFF1C1E48),

      ),
     home: InputPage(),


    );
  }
}
