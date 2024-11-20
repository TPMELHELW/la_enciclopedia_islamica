import 'package:get/get.dart';
import 'package:la_enciclopedia_islamica/core/services/archive_service.dart';
import 'package:la_enciclopedia_islamica/core/services/download_services.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:la_enciclopedia_islamica/features/advanced_learning/presentation/controller/advanced_learning_controller.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/non_muslim_bindings.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/presentation/controller/non_muslim_controller.dart';

import 'core/helpers/network_info.dart';
import 'core/services/shared_preferences_service.dart';

class InitialBindings extends Bindings {
  @override
  dependencies() async {
    Get.put(SharedPreferencesService(pref: Get.find()));
    Get.put(InternetConnectionChecker());
    Get.put<NetworkInfo>(NetworkInfoImpl(Get.find()));
    Get.put(ArchiveService(sharedPreferencesService: Get.find()));
    Get.put(AdvancedLearningController());
    NonMuslimBindings().dependencies();

    Get.put(NonMuslimController());

    Get.lazyPut(() => DownloadServices());
  }
}
