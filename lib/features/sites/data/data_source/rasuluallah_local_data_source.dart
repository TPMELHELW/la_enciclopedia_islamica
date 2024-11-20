import 'dart:convert';
import 'package:la_enciclopedia_islamica/features/sites/domain/entities/media_entity.dart';

import '../../../../core/constants/app_keys.dart';
import '../../../../core/services/archive_service.dart';
import '../../../../core/services/shared_preferences_service.dart';
import '../../domain/entities/fixed_entities.dart';

abstract class RasuluallhLocalDataSource {
  Future<List<CategoryFixedEntity>> getContent();
  Future<List<MediaEntity>> getAudios();
  Future<List<MediaCategoryEntity>> getVideos();
}

class RasuluallhLocalDataSourceImp extends RasuluallhLocalDataSource {
  final SharedPreferencesService sharedPreferencesService;
  final ArchiveService archiveService;

  RasuluallhLocalDataSourceImp({
    required this.sharedPreferencesService,
    required this.archiveService,
  });
  @override
  Future<List<CategoryFixedEntity>> getContent() async {
    String? fileContent =
        await archiveService.readFile(name: AppKeys.rasuluAllah);
    List<CategoryFixedEntity> articals = [];
    if (fileContent != null) {
      Map jsonData = json.decode(fileContent);

      (jsonData['RasuluAllah']['articles']).forEach((category, categoryData) {
        CategoryFixedEntity item =
            CategoryFixedEntity(category: category, data: []);
        categoryData.forEach((articalName, articalBody) {
          item.data.add(FixedEntities(name: articalName, content: articalBody));
        });
        articals.add(item);
      });
    }
    return Future.value(articals);
  }

  @override
  Future<List<MediaEntity>> getAudios() async {
    try {
      String? jsonString =
          await archiveService.readFile(name: AppKeys.rasuluAllahAudios);
      List<MediaEntity> audios = [];
      if (jsonString != null) {
        var jsonData = json.decode(jsonString);
        ((jsonData['RasuluAllah']['Audios']) as Map).forEach(
          (key, value) {
            audios.add(MediaEntity(url: key, name: value));
          },
        );
      }
      return Future.value(audios);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<MediaCategoryEntity>> getVideos() async {
    try {
      List<MediaCategoryEntity> result = [];
      String? json =
          await archiveService.readFile(name: AppKeys.rasuluAllahVideos);
      if (json != null) {
        Map<String, dynamic> decoded = jsonDecode(json);

        (decoded['RasuluAllah']['Videos'] as Map).forEach((category, dataMap) {
          List<MediaEntity> data = [];
          (dataMap as Map).forEach((name, url) {
            data.add(MediaEntity(name: name, url: url));
          });
          result.add(MediaCategoryEntity(category: category, data: data));
        });
      }
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
