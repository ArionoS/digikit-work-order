import 'package:digikit_w_o/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:get/get.dart';

class WalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalletController>(
      () => WalletController(),
    );
  }
}
