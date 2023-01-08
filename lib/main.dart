import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key $ key}) : super(key: key);
  @override 
  Widget build (BuildContext context){
    return GetMaterialApp(
      home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget{
  const HomePage({Key?key}):super(key: key);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Snack Bar"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.snackbar(
              "HAALO",
              "ini adalah pesannya",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
            )
          },
        ),
      ),
    )
  }
}
