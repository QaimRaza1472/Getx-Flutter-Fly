import 'package:flutter/material.dart';
import 'package:get/get.dart';
//

class MediaQueryScreen extends StatelessWidget {
  MediaQueryScreen({Key? key}) : super(key: key);

  var height1=Get.size.height;
  var width1=Get.size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
         child: Icon(Icons.cached),
          onPressed: (){
            Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());

          }

          ),
      body: Center(
        child: Container(
          height:height1*0.5,
          width: width1*0.8,
          color: Colors.orange,
        ),
      ),
    );

  }
}




