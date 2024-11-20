import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/data/models/course_model.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/domain/repository/non_muslim_repo.dart';

class GetCoursesUseCase {
  final NonMuslimRepo nonMuslimRepo;

  GetCoursesUseCase(this.nonMuslimRepo);

  Future<Either<Failure, List<NonMuslimModel>>> call() async {
    return await nonMuslimRepo.getCourses();
  }
}
