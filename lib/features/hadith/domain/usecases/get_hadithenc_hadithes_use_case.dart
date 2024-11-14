import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/hadith/domain/repository/hadith_repo.dart';
import 'package:la_enciclopedia_islamica/features/hadith/presentation/model/sunnah_data_model.dart';

class GetHadithencHadithesUseCase {
  final HadithRepo _hadithRepo;

  GetHadithencHadithesUseCase({required HadithRepo hadithRepo})
      : _hadithRepo = hadithRepo;

  Future<Either<Failure, List<SunnahDataModel>>> call(String path) async {
    return await _hadithRepo.getSunnah(path);
  }
}
