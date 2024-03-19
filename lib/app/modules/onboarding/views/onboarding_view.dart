// ignore_for_file: unrelated_type_equality_checks

import 'package:digikit_w_o/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned(
              child: Obx(
                () => PageView.builder(
                  controller: controller.pageController.value,
                  itemCount: controller.onboardingScreens.length,
                  onPageChanged: (int index) {
                    controller.currentIndex.value = index;
                  },
                  itemBuilder: (context, index) {
                    return controller.onboardingScreens[index];
                  },
                ),
              ),
            ),

            // Dot
            Obx(
              () => Positioned(
                bottom: Get.height * 0.225,
                width: Get.width - 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.onboardingScreens.length,
                    (index) => Container(
                      height: 10,
                      width: controller.currentIndex == index ? 42 : 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentIndex.value == index
                            ? ThemeData().primaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Button
            Obx(
              () => Positioned(
                bottom: Get.height * 0.0125,
                width: Get.width - 0.06,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: Get.width,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          ThemeData().primaryColor,
                        ),
                      ),
                      onPressed: () {
                        controller.currentIndex != 2
                            ? controller.pageController.value.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear)
                            : Get.offAndToNamed(Routes.LOGIN);
                      },
                      child: Text(
                        controller.currentIndex != 2 ? 'Get Started' : 'Login',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
