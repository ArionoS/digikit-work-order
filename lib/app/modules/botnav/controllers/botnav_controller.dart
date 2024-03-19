import 'package:digikit_w_o/app/modules/home/views/home_view.dart';
import 'package:digikit_w_o/app/modules/profile/views/profile_view.dart';
import 'package:digikit_w_o/app/modules/wallet/views/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotnavController extends GetxController {
  final count = 0.obs;

  final RxInt _currentIndex = 0.obs;
  RxInt get currentIndex => _currentIndex;

  final List<Widget> _screens = <Widget>[
    const HomeView(),
    const WalletView(),
    const ProfileView(),
  ];

  List<Widget> get screens => _screens;

  void changeCurrentIndex(int index) {
    _currentIndex.value = index;
  }

  void increment() => count.value++;
}
