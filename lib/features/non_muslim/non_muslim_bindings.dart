import 'package:la_enciclopedia_islamica/features/non_muslim/data/data_sources/non_muslim_local_data_source.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/data/repository/non_muslim_repo_impl.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/domain/repository/non_muslim_repo.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/presentation/controller/non_muslim_controller.dart';
import 'package:get/get.dart';

class NonMuslimBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<NonMuslimLocalDataSource>(
      NonMuslimLocalDataSourceImpl(
        sharedPreferencesService: Get.find(),
        archiveService: Get.find(),
      ),
    );
    Get.put<NonMuslimRepo>(
      NonMuslimRepoImpl(
        nonMuslimLocalDataSource: Get.find(),
      ),
    );

    Get.put(NonMuslimController());
  }
}
