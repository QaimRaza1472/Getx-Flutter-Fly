import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_fly/screen_3.dart';
import 'package:getx_flutter_fly/services.dart';

class BottomSheetScreen extends StatelessWidget {
  BottomSheetScreen({Key? key}) : super(key: key);

  Services services = Get.find<Services>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton:
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: (){
            Get.bottomSheet(
              Container(
                height: 300,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:Colors.grey.withOpacity(0.2),
                      offset: Offset(0, 0),
                      blurRadius: 2,
                      spreadRadius: 5,

                    )
                  ],
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  ),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      Text("Bottom Sheet",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 15,),
                      Text("Are you sure!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         ElevatedButton.icon(
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.red,
                           ),
                             onPressed: (){
                             Get.back();
                             },
                             icon: Icon(Icons.thumb_down),
                             label: Text("NO"),
                         ),



                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: (){
                            },
                            icon: Icon(Icons.thumb_up),
                            label: Text("Yes"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              enableDrag: true,
              //barrierColor: Colors.red.withOpacity(0.2),
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
                "Bottom Sheet",
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
