import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_fly/screen_3.dart';
import 'package:getx_flutter_fly/services.dart';

class SnackBarScreen extends StatelessWidget {
  SnackBarScreen({Key? key}) : super(key: key);

  Services services = Get.find<Services>();

  /*  onTap: (){
   Get.to(Screen3());
},*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton:
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: (){

            Get.snackbar("Message", "Item is added to cart",
            backgroundColor: Colors.green,
              borderWidth: 2,
              borderColor: Colors.red,
              colorText: Colors.white,
              icon: const Icon(Icons.thumb_up,
              color: Colors.white,
              ),
              margin: const EdgeInsets.all(30),
              snackPosition:SnackPosition.BOTTOM,
              dismissDirection: DismissDirection.horizontal,


            );
           // Get.to(Screen3());
          },
          child: const Icon(Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Center(
              child: Text(
                "SnackBar",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
