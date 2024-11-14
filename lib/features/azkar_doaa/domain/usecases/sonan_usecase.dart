import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/azkar_doaa/data/models/sonan_model.dart';
import 'package:la_enciclopedia_islamica/features/azkar_doaa/domain/repository/azkar_doaa_repo.dart';

class GetSonanUseCase {
  final AzkarDoaaRepo azkarDoaaRepo;

  GetSonanUseCase(this.azkarDoaaRepo);

  Future<Either<Failure, Sonan>> call() async {
    return await azkarDoaaRepo.getSonan();
  }
}
