import 'package:get/get.dart';

class GetNavigationBar extends GetxController{
  RxInt index=0.obs;
  setIndex(int val){
    index.value=val;
  }
}