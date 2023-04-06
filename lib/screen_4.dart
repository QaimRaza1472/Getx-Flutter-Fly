import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_fly/screen_1.dart';
import 'package:getx_flutter_fly/screen_2.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: (){
            Get.offAll(Screen2());
          },
          child: const Center(
            child: Text("Screen4",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
