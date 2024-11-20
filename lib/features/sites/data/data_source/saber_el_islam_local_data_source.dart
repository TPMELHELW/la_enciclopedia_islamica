import 'dart:convert';
import '../../../../core/constants/app_keys.dart';
import '../../../../core/services/archive_service.dart';
import '../../../../core/services/shared_preferences_service.dart';
import '../models/saber_el_islam_model.dart';

abstract class SaberElIslamLocalDataSource {
  Future<List<SaberElIslamModel>> getArtical();
}

class SaberElIslamLocalDataSourceImp extends SaberElIslamLocalDataSource {
  final SharedPreferencesService sharedPreferencesService;
  final ArchiveService archiveService;

  SaberElIslamLocalDataSourceImp({
    required this.sharedPreferencesService,
    required this.archiveService,
  });
  @override
  Future<List<SaberElIslamModel>> getArtical() async {
    String? fileContent =
        await archiveService.readFile(name: AppKeys.saberElIslam);
    List<SaberElIslamModel> articals = [];
    if (fileContent != null) {
      Map jsonData = json.decode(fileContent);
      jsonData.forEach((key, value) {
        List<SEIArtical> subArticals = [];
        value['المقالات'].forEach((key, value) {
          subArticals.add(SEIArtical(
              link: value['الرابط'], artical: value['المقال'], title: key));
        });

        articals.add(SaberElIslamModel(
            articals: subArticals, link: value['الرابط'], name: key));
      });
    }
    return Future.value(articals);
  }
}
