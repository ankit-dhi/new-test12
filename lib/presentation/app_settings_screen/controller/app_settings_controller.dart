import '/core/app_export.dart';
import 'package:ankit_s_application8/presentation/app_settings_screen/models/app_settings_model.dart';

class AppSettingsController extends GetxController {
  Rx<AppSettingsModel> appSettingsModelObj = AppSettingsModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
