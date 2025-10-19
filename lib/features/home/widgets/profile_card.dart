
import 'package:basic/core/constants/app_colors.dart';
import 'package:basic/core/constants/my_size.dart';
import 'package:basic/data/model/profile_model.dart';
import 'package:basic/features/home/widgets/like_icon.dart';
import 'package:basic/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  final ProfileModel profile;
  final VoidCallback toggleLike;
  const ProfileCard({super.key,required this.profile,required this.toggleLike});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.profileDetail,arguments: profile);
      },
      child: Container(

        padding: EdgeInsets.all(MySizes.paddingMarginSm),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(MySizes.paddingMarginSm),
          border: Border.all(
            color: Colors.grey.shade300, // Border color
            width: 1, // 1px border
          ),
          image: DecorationImage(
            image: NetworkImage(profile.profilePicture),
            // image: Image.network(profile.profilePicture),
            fit: BoxFit.cover,
            onError: (error, stackTrace) {
              print(stackTrace);
            },
          ),
        ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      profile.firstName,
                      style: theme.textTheme.titleLarge?.copyWith(color: AppColors.white),
                    ),
                    // like icon
                    LikeIcon(toggleLike:toggleLike,isLiked: profile.isLiked,)
                  ]),
                SizedBox(height: 0,),
                Text(
                  profile.city,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: false,
                    applyHeightToLastDescent: false,
                  ),
                  style: theme.textTheme.bodyLarge?.copyWith(color: AppColors.white.withAlpha(170)),
                )
              ]
          )
      ),
    );
  }
}