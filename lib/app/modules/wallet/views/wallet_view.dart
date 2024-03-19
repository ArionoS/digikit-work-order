import 'dart:ui';

import 'package:digikit_w_o/app/modules/wallet/views/widgets/history_tab_widget.dart';
import 'package:digikit_w_o/app/modules/wallet/views/widgets/portfolio_tab_widget.dart';
import 'package:flutter/material.dart';

class WalletView extends StatefulWidget {
  const WalletView({super.key});

  @override
  State<WalletView> createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, initialIndex: 1, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        toolbarHeight: kToolbarHeight * 1.3,
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Saldo Wallet',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Text(
                '\$94,735,28',
                style: TextStyle(
                  color: ThemeData().primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              text: 'Portfolio',
            ),
            Tab(
              text: 'History',
            ),
          ],
        ),
      ),
      body: Stack(
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
          TabBarView(
            controller: tabController,
            children: const [
              PortfolioTabWidget(),
              HistoryTabWidget(),
            ],
          )
        ],
      ),
    );
  }
}
