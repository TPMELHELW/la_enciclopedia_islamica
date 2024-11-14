import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import 'package:get/get.dart';
import '../../../../core/helpers/get_failure_from_exception.dart';
import '../../domain/entities/fixed_entities.dart';
import '../../domain/repository/fixed_repository.dart';
import '../data_source/first_step_local_data_source.dart';

class FirstStepRepositoryImp extends FixedRepository {
  final FirstStepLocalDataSource firstStepLocalDataSource;
  FirstStepRepositoryImp({
    required this.firstStepLocalDataSource,
  });
  @override
  Future<Either<Failure, List<FixedEntities>>> getArtical() async {
    await firstStepLocalDataSource.getArtical();
    try {
      var artical = await firstStepLocalDataSource.getArtical();
      return Right(artical);
    } catch (e) {
      return Left(getFailureFromException(e));
    }
  }
}
