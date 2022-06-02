import "package:get/get.dart";

class StepperController extends GetxController {
  Rx<int> currentIndex = 0.obs;
  Rx<String> nextButton = 'Next'.obs;
  Rx<bool> isLoading = false.obs;
}
