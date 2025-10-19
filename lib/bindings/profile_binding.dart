
import 'package:basic/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    //  inject
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}