import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          width: 100,
          height: 100,
          bottom: 180,
          right: 2,
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Color(0xffF89A29),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          width: 200,
          height: 200,
          bottom: 10,
          right: 0,
          child: SizedBox(
            width: 200,
            height: 200,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: ThemeData().primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          width: 200,
          height: 200,
          bottom: 10,
          right: 0,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
            child: const SizedBox(
              width: 200,
              height: 200,
            ),
          ),
        ),
        Positioned(
          width: Get.width * 0.75,
          top: Get.height * 0.075,
          left: Get.width * 0.135,
          child: const Text(
            'WEL',
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
