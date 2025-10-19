import 'package:basic/controller/profile_controller.dart';
import 'package:basic/data/network/DioClient.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    //  inject dio client
    Get.lazyPut<DioClient>(() => DioClient(), fenix: true);
    // Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}