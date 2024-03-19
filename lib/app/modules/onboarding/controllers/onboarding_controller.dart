import 'package:digikit_w_o/app/modules/onboarding/views/widgets/onboard1_widget.dart';
import 'package:digikit_w_o/app/modules/onboarding/views/widgets/onboard2_widget.dart';
import 'package:digikit_w_o/app/modules/onboarding/views/widgets/onboard3_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
   Rx<int> currentIndex = 0.obs;
  Rx<PageController> pageController = PageController().obs;

  List<Widget> onboardingScreens = [
    const Onboard1(),
    const Onboard2(),
    const Onboard3(),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController.value = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.value.dispose();
  }
}
