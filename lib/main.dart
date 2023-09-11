import 'package:flutter/material.dart';
import 'package:get_x/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'getx',
      home: Home(),
    ); //MaterialApp
  }
}
