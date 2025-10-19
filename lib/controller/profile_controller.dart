import 'package:basic/data/model/profile_model.dart';
import 'package:basic/data/services/ProfileServices.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final ProfileServices _profileServices = ProfileServices();
  RxList<ProfileModel> profiles = <ProfileModel>[].obs;
  RxBool isLoading = false.obs;
  RxString errorMessages = ''.obs;
  
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      final result = await _profileServices.fetchProducts();

      profiles.value = result;
    } catch (e) {
      errorMessages.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  void toggleLike(int index) {
    final updatedProfile = profiles[index];
    updatedProfile.isLiked = !updatedProfile.isLiked;

    // Manually trigger update by assigning to the list
    profiles[index] = updatedProfile;
    print("profile updated successfully");
  }

}