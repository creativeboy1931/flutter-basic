import 'package:basic/bindings/profile_binding.dart';
import 'package:basic/features/home/screens/flash_screen.dart';
import 'package:basic/features/home/screens/home_screen.dart';
import 'package:basic/features/profile/profile_detail_screen.dart';
import 'package:get/get.dart';

abstract class AppRoutes{
  static const String splash = "/";
  static const String home = "/home";
  static const String profileDetail= "/profile/detail";

  static final List<GetPage> page = [

    GetPage(name: splash, page: () => FlashScreen()),
    GetPage(name: home, page: () => HomeScreen(),binding: ProfileBinding()),
    GetPage(name: profileDetail, page: () => ProfileDetailScreen()),
  ];
}