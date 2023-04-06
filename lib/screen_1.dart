import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_fly/screen_2.dart';
import 'package:getx_flutter_fly/services.dart';



class Screen1 extends StatelessWidget {
   Screen1({Key? key}) : super(key: key);

    Services services = Get.find <Services>();

  @override
  Widget build(BuildContext context) {
      print('Pressed');
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text("${services.num.toString()}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
                Center(
                  child: Text("${services.mynumber.toString()}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      services.increaseNum();
                    },
                    child: Text("Increment"),
                ),
                ElevatedButton(
                  onPressed: (){
                   // Get.to(Screen2());
                    services.decrementNum();
                  },
                  child: Text("Decrement"),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: (){
                Get.to(Screen2());
                },
              child: Text("Next"),),
          ],
        ),
      ),
    );
  }
}
