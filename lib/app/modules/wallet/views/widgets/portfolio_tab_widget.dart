import 'package:flutter/material.dart';

class PortfolioTabWidget extends StatelessWidget {
  const PortfolioTabWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Portfolio Tab',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
