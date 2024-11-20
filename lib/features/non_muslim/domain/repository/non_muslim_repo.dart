import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/non_muslim/data/models/course_model.dart';

abstract class NonMuslimRepo {
  Future<Either<Failure, List<NonMuslimModel>>> getCourses();
}
