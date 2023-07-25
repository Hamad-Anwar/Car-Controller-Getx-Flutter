import 'package:get/get.dart';

class GetClimate extends GetxController{
  RxBool auto = true.obs;
  RxBool cool = false.obs;
  RxBool fan = false.obs;
  RxBool heat = false.obs;
  RxBool ac = false.obs;
  RxDouble value=29.0.obs;

  setAuto(){
    auto.value=true;
    cool.value=false;
    fan.value=false;
    heat.value=false;
    ac.value=false;
    setValue(29.0);
  }


  setCool(){
    auto.value=false;
    cool.value=true;
    fan.value=false;
    heat.value=false;
    ac.value=false;
    setValue(20);
  }

  setFan(){
    auto.value=false;
    cool.value=false;
    fan.value=true;
    heat.value=false;
    ac.value=false;
    setValue(25);
  }

  setHeat(){
    auto.value=false;
    cool.value=false;
    fan.value=false;
    heat.value=true;
    ac.value=false;
    setValue(35.0);
  }
  setValue(double val){
    value.value=val;
    if(value<=20){
      ac.value=true;
    }else{
      ac.value=false;
    }

  }
  setAc(){
    ac.toggle();
  }

}