import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter.value++;
    counter.refresh();
  }
}
