import '../controller/app_settings_controller.dart';
import '../models/listtitle_item_model.dart';
import 'package:ankit_s_application8/core/app_export.dart';
import 'package:ankit_s_application8/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtitleItemWidget extends StatelessWidget {
  ListtitleItemWidget(this.listtitleItemModelObj);

  ListtitleItemModel listtitleItemModelObj;

  var controller = Get.find<AppSettingsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 32.5,
        bottom: 32.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_notifications".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular36.copyWith(
                    height: 1.61,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_enabled".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular20.copyWith(
                      height: 1.60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => CustomSwitch(
              padding: getPadding(
                left: 380,
                top: 26,
                bottom: 29,
              ),
              value: controller.isSelectedSwitch.value,
              onChanged: (value) {
                controller.isSelectedSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
