import '../app_settings_screen/widgets/listtitle_item_widget.dart';
import 'controller/app_settings_controller.dart';
import 'models/listtitle_item_model.dart';
import 'package:ankit_s_application8/core/app_export.dart';
import 'package:flutter/material.dart';

class AppSettingsScreen extends GetWidget<AppSettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
            left: 48,
            top: 42,
            right: 49,
            bottom: 142,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    left: 2,
                    right: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 8,
                          bottom: 11,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgSort,
                          height: getVerticalSize(
                            22.00,
                          ),
                          width: getHorizontalSize(
                            33.00,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_settings".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtLatoRegular34.copyWith(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                          bottom: 11,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgTunematerial,
                          height: getSize(
                            22.00,
                          ),
                          width: getSize(
                            22.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 124,
                  ),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.appSettingsModelObj.value
                                .listtitleItemList.length,
                            itemBuilder: (context, index) {
                              ListtitleItemModel model = controller
                                  .appSettingsModelObj
                                  .value
                                  .listtitleItemList[index];
                              return ListtitleItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 65,
                              right: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_about_this_app".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtLatoRegular36.copyWith(
                                          height: 1.61,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                          right: 10,
                                        ),
                                        child: Text(
                                          "lbl_version_1_1_0".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtLatoRegular20
                                              .copyWith(
                                            height: 1.60,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 31,
                                    bottom: 33,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
