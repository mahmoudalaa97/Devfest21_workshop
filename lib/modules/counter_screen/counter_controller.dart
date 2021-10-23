import 'package:flutter_application_1/router/router.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  int counterValue = 0;

  void onClickFloatingAction() {
    counterValue++;
    update();
  }

  void onClickText() {
    if (counterValue <= 0) {
      Get.snackbar("Error", "Can't be negative");
    } else {
      counterValue--;
      update();
    }
  }

  void onClickNext() {
    Get.toNamed(AppRouter.homeScreen);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
