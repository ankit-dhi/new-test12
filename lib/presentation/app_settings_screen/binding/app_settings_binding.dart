import '../controller/app_settings_controller.dart';
import 'package:get/get.dart';

class AppSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppSettingsController());
  }
}
