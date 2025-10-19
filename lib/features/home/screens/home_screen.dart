import 'package:basic/controller/profile_controller.dart';
import 'package:basic/core/constants/string_constant.dart';
import 'package:basic/core/constants/app_colors.dart';
import 'package:basic/data/model/profile_model.dart';
import 'package:basic/features/home/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ProfileController _profileController = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Determine the number of columns based on screen width
    int crossAxisCount = 2;  // Default for phones
    if (screenWidth > 600) {
      crossAxisCount = 3;  // 3 columns for tablets
    }
    if (screenWidth > 1000) {
      crossAxisCount = 4;  // 4 columns for desktops
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstant.appTitle),
      ),
      body:Padding(padding: EdgeInsets.all(8),
        child:Obx(() {
          if (_profileController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          final profiles = _profileController.profiles;
          if (profiles.isEmpty) {
            return const Center(child: Text(StringConstant.profileNotFound,style: TextStyle(color: AppColors.error),));
          }
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,  // Number of columns based on screen size
                crossAxisSpacing: 8.0,  // Horizontal spacing between grid items
                mainAxisSpacing: 8.0,   // Vertical spacing between grid items
                childAspectRatio: 0.75, // Adjust the aspect ratio for each card
              ),
              itemCount: profiles.length,
              itemBuilder: (context, index) {
                ProfileModel profile =  profiles[index];
                return ProfileCard(profile: profile,toggleLike: ()=>_profileController.toggleLike(index),);  // Using ProfileCard widget
              },
            );
          }),
        ),
    );
  }

}
