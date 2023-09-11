import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/controller/tap_controller.dart';

class getBuilder extends StatelessWidget {
  const getBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      appBar: AppBar(
        title: Text('GetBuilder'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(17))
            ),

            child: const Center(child: Text(textAlign: TextAlign.center,'0',style: TextStyle(color: Colors.white),),)
          )
        ],
      ),
      SizedBox(
        width: 25,
        height: 25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(17))
          ),
          child: Center(child: Text(textAlign: TextAlign.center,'Decrease', style: TextStyle(color: Colors.white,)),
        )
      )
    ]
      )

  )
    );
  }
}