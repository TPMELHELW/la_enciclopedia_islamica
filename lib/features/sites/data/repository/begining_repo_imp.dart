import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/helpers/get_failure_from_exception.dart';
import '../../domain/entities/fixed_entities.dart';
import '../../domain/repository/fixed_repository.dart';
import '../data_source/begining_local_data_source.dart';

class BeginingRepositoryImp extends FixedRepository {
  final BeginingLocalDataSource beginingLocalDataSource;
  BeginingRepositoryImp({
    required this.beginingLocalDataSource,
  });
  @override
  Future<Either<Failure, List<FixedEntities>>> getArtical() async {
    await beginingLocalDataSource.getArtical();
    try {
      var artical = await beginingLocalDataSource.getArtical();
      return Right(artical);
    } catch (e) {
      return Left(getFailureFromException(e));
    }
  }
}
