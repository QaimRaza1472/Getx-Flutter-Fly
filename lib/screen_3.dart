import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_fly/screen_1.dart';
import 'package:getx_flutter_fly/screen_2.dart';
import 'package:getx_flutter_fly/screen_4.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: (){
            //Get.offAll(Screen1());
            Get.to(Screen4());
          },
          child: const Center(
            child: Text("Screen3",
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
