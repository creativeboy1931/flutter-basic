import 'package:basic/core/constants/app_colors.dart';
import 'package:basic/core/constants/my_size.dart';
import 'package:basic/data/model/profile_model.dart';
import 'package:basic/features/home/widgets/like_icon.dart';
import 'package:basic/features/home/widgets/notched_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProfileDetailScreen extends StatelessWidget {
  ProfileDetailScreen({super.key});
  final profile = Get.arguments as ProfileModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
          children: [
            // image section
            Expanded(
              flex: 8,
              child: Stack(
                children: [
                  Positioned.fill(child: Image.network(profile.profilePicture,fit: BoxFit.cover,)),
                  Positioned(
                    width: size.width,
                      top: 25,
                      left: 0,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            IconButton(onPressed: ()=> Get.back(), icon: Icon(Icons.arrow_back_outlined,)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined)),
                        ],
                      )
                  ),

                  //notched shape
                  Positioned(
                    width: size.width,
                      top:size.height * 0.8 - 16,
                      child: Align(
                        alignment: AlignmentGeometry.center,
                          child: Container(
                              width: 25,height: 4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  10
                                ),
                          ))
                      )
                  ),
                  //notch
                  Positioned(
                      top: size.height * 0.8 - 15,
                      left: 0,
                      right: 0,
                      child: ClipPath(
                        clipper: CenterNotchedClipper(
                          notchWidth: 70,     // Adjust width of notch
                          notchHeight: 20,    // Adjust depth of notch
                          cornerRadius: 20,   // Corner radius
                        ),
                        child: Container(
                          color: Colors.white,
                          height: 20,
                          width: double.infinity,
                        ),
                      ),
                  )
                ],

              ),
            ),
            // detail section
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: MySizes.paddingMarginMd),
                color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${profile.firstName}, ${profile.age}",style: theme.textTheme.headlineMedium,),

                      SizedBox(height: MySizes.defaultSpace,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Location",style: theme.textTheme.titleLarge,),
                              SizedBox(height: MySizes.titleSpace,),

                            Text("${profile.city}, ${profile.country}",style: theme.textTheme.bodyLarge,),

                          ],),
                          LikeIcon(toggleLike: null,isLiked: profile.isLiked,color: AppColors.primaryLight,),
                        ],
                      )
                    ],
                  ),
                ),
            ),
          ],
      ),
    );
  }
}
