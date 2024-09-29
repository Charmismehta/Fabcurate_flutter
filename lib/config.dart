import 'package:fabcurate_flutter/common_controller/app_controller.dart';
import 'package:get/get.dart';

export 'package:flutter/material.dart';
export 'package:get/get_navigation/src/root/get_material_app.dart';

// Routes library
export 'package:get/get_navigation/src/routes/get_route.dart';
// All packages list library
export 'package:fabcurate_flutter/routes/index.dart';
export 'package:fabcurate_flutter/routes/route_method.dart';
export 'package:fabcurate_flutter/routes/route_name.dart';
export 'package:fabcurate_flutter/extension/spacing.dart';
// All extension files library
export 'package:fabcurate_flutter/extension/text_style_extensions.dart';
export 'package:fabcurate_flutter/extension/widget_extension.dart';

export 'package:fabcurate_flutter/theme/app_css.dart';
export 'package:fabcurate_flutter/theme/app_theme.dart';
export 'package:fabcurate_flutter/theme/theme_service.dart';
// All routes library
export 'package:fabcurate_flutter/routes/screen_list.dart';

final appCtrl = Get.isRegistered<AppController>()
    ? Get.find<AppController>()
    : Get.put(AppController());
