import 'package:get_x/getBuilder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'getBuilder.dart';

class obx extends StatelessWidget {
  const obx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => getBuilder()));
                },
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),

                  child: Center(child: Text(textAlign: TextAlign.center,'GetBuilder', style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),

                child: Center(child: Text(textAlign: TextAlign.center,'Obx', style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),

                child: Center(child: Text(textAlign: TextAlign.center,'SUM XT', style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
