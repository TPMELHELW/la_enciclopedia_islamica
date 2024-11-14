import 'package:la_enciclopedia_islamica/features/advanced_learning/data/models/ayah_model.dart';
import 'package:la_enciclopedia_islamica/features/advanced_learning/domain/entities/ayah_entity.dart';
import 'package:la_enciclopedia_islamica/features/advanced_learning/domain/entities/surah_entity.dart';

class SurahModel extends Surah {
  const SurahModel({
    required super.name,
    required super.ayat,
  });

  factory SurahModel.fromJson(Map<String, dynamic> json) {
    return SurahModel(
      name: json['sora'],
      ayat: (json['ayat'] as List)
          .map<Ayah>(
            (ayah) => AyahModel.fromJson(ayah),
          )
          .toList(),
    );
  }
}
