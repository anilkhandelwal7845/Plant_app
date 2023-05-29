import 'package:flutter/material.dart';
import 'package:plant_app/color/constant.dart';
import 'package:plant_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  primaryColor: kPrimearyColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor) ,
       visualDensity: VisualDensity.adaptivePlatformDensity

      ),
      home: const HomeScreen(),
    );
  }
}
