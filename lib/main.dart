import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GetStorage store = Get.put(GetStorage());
    // Get.put(HomeController());
    // Get.put(ApiNetwork());
    bool? login = store.read('login');
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xffAFABFE),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey[50],
              titleTextStyle: const TextStyle(color: Colors.black),
              iconTheme: const IconThemeData(color: Color(0xFF006FFD)),
              elevation: 0),
        ),
        initialRoute: login == null ? Routes.ONBOARDING : Routes.BOTNAV,
        // initialRoute: Routes.BOTNAV,
        getPages: AppPages.routes,
      ),
    );
  }
}
