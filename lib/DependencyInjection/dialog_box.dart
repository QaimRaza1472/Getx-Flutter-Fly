import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_fly/screen_3.dart';
import 'package:getx_flutter_fly/services.dart';

class DialogScreen extends StatelessWidget {
  DialogScreen({Key? key}) : super(key: key);

  Services services = Get.find<Services>();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton:
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: (){
            Get.defaultDialog(
              title: "Dialog Box",
              middleText: "Do you want to continue?",
              actions: [

                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: (){},
                  icon: const Icon(Icons.thumb_down),
                  label: const Text("NO"),
                ),


                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green,
                  ),
                  onPressed: (){},
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("YES"),
                ),


              ],
            );
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
                "Dialogue Box",
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
