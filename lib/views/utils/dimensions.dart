import 'package:get/get.dart';

class Dimensions {
  static double screenheight = Get.context!.height;
  static double screenwidth = Get.context!.width;

  // ! container height for the gridview
  static double containerheight450 = screenheight / 1.38;
  static double cardheight = screenheight / 6.2;
  static double cardwidth = screenwidth / 4.13;
}
