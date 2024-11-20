import 'package:la_enciclopedia_islamica/features/azkar_doaa/data/data_sources/azkar_doaa_local_data_source.dart';
import 'package:la_enciclopedia_islamica/features/azkar_doaa/data/repository/azkar_doaa_repo_impl.dart';
import 'package:la_enciclopedia_islamica/features/azkar_doaa/domain/repository/azkar_doaa_repo.dart';
import 'package:la_enciclopedia_islamica/features/azkar_doaa/presentation/controller/azkar_doaa_controller.dart';
import 'package:get/get.dart';

class AzkarDoaaBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<AzkarDoaaLocalDataSource>(
      AzkarDoaaLocalDataSourceImpl(
        sharedPreferencesService: Get.find(),
        archiveService: Get.find(),
      ),
    );
    Get.put<AzkarDoaaRepo>(
      AzkarDoaaRepoImpl(
        azkarLocalDataSource: Get.find(),
      ),
    );

    Get.put(AzkarDoaaController());
  }
}
