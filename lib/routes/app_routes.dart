import 'package:ankit_s_application8/presentation/app_settings_screen/app_settings_screen.dart';
import 'package:ankit_s_application8/presentation/app_settings_screen/binding/app_settings_binding.dart';
import 'package:ankit_s_application8/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ankit_s_application8/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String appSettingsScreen = '/app_settings_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: appSettingsScreen,
      page: () => AppSettingsScreen(),
      bindings: [
        AppSettingsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AppSettingsScreen(),
      bindings: [
        AppSettingsBinding(),
      ],
    )
  ];
}
