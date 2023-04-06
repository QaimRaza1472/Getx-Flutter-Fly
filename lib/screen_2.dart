import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_fly/screen_3.dart';
import 'package:getx_flutter_fly/services.dart';
import 'package:getx_flutter_fly/DependencyInjection/snackbar.dart';

import 'DependencyInjection/bottom_sheet.dart';
import 'DependencyInjection/dialog_box.dart';
import 'DependencyInjection/mediaquery.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

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
           Get.to(MediaQueryScreen());
         },
         child: const Icon(Icons.arrow_forward_ios,
         color: Colors.white,
       ),
       ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Text(
                "Screen2",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    services.num.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    services.mynumber.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    services.increaseNum();
                  },
                  child: const Text("Increment"),
                ),
                ElevatedButton(
                  onPressed: () {
                    services.decrementNum();
                  },
                  child: const Text("Decrement"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
