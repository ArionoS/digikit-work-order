import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Get.height * 0.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ThemeData().primaryColor,
                    Colors.white,
                    ThemeData().primaryColor,
                  ],
                  transform: const GradientRotation(3.14 / 2),
                ),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Advanced chart with\nreal-time data',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Track your crypto positions and get\naccess to analysis tools.',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
