// ignore_for_file: library_private_types_in_public_api

import 'package:digikit_w_o/app/modules/common/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/botnav_controller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BotnavView extends StatefulWidget {
  const BotnavView({super.key});

  @override
  _BotnavViewState createState() => _BotnavViewState();
}

class _BotnavViewState extends State<BotnavView> {
  final BotnavController controller = Get.put(BotnavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: Center(
        child: controller.screens.elementAt(controller.currentIndex.value),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.account_balance_wallet_rounded,
                  text: 'Wallet',
                ),
                GButton(
                  icon: Icons.account_circle_rounded,
                  text: 'Profile',
                ),
              ],
              selectedIndex: controller.currentIndex.value,
              onTabChange: (index) {
                controller.changeCurrentIndex(index);
                setState(() {});
              },
            ),
          ),
        ),
      ),
    );
  }
}
