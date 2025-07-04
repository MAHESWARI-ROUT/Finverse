import 'package:get/state_manager.dart';

class PasswordController  extends GetxController{
  RxBool ishidden = true.obs;
  void togglevisibility(){
    ishidden.value = !ishidden.value;
  }
}