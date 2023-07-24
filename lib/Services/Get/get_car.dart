 import 'package:get/get.dart';

class GetCar extends GetxController{
  RxBool engin=true.obs;
  RxBool door=true.obs;
  RxBool trunk=true.obs;
  RxBool climate=true.obs;



   setEngine(){
    engin.value=!engin.value;
  }
   setDoor(){
    door.value=!door.value;
  }
  setTrunk(){
    trunk.value=!trunk.value;
  }
    setClimate(){
    climate.value=!climate.value;
  }

}