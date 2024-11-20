//describes strucure of Surah

import 'package:la_enciclopedia_islamica/features/advanced_learning/domain/entities/ayah_entity.dart';

class Surah {
  final String name;
  final List<Ayah> ayat;

  const Surah({
    required this.name,
    required this.ayat,
  });
}
