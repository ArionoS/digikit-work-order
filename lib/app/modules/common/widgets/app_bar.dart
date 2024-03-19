import 'package:digikit_w_o/app/modules/common/constant/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  // CustomAppBar({});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(color: Colors.white),
      ),
      leadingWidth: kToolbarHeight * 2.5,
      toolbarHeight: 60.h,
      leading: Image.asset(
        AppLogos.plnndB,
        height: 80.h,
        width: 100.w,
        // color: Colors.blue,
      ),
      // leading: const SizedBox.shrink(),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.centerRight,
            height: 40.h,
            width: 40.w,
            child: Image.asset(
              AppLogos.logo,
              height: 60.h,
              width: 60.w,
              // color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
