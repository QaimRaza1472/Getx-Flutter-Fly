
import 'package:get/get.dart';

class Services extends GetxController{

  var num=0.obs;

  var mynumber=100.obs;


  increaseNum(){
    num++;
    print("increment working");
  }

  decrementNum(){
    mynumber--;
  }


}