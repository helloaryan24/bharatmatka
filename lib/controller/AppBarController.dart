import 'package:get/get.dart';

class AppBarController extends GetxController {
  var title = 'Bharat - Satta online\nmatka play'.obs;
  var points = 0.obs;

  void updateTitle(String newTitle) {
    title.value = newTitle;
  }

  void updatePoints(int newPoints) {
    points.value = newPoints;
  }
}
