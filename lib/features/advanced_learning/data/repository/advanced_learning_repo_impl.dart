// import 'package:dartz/dartz.dart';
// import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
// import 'package:la_enciclopedia_islamica/core/helpers/get_failure_from_exception.dart';
// import 'package:la_enciclopedia_islamica/features/advanced_learning/domain/entities/surah_entity.dart';
// import 'package:la_enciclopedia_islamica/features/advanced_learning/domain/repository/advanced_learning_repo.dart';

// class QuranRepoImpl implements QuranRepo {
//   final QuranRemoteDataSource quranRemoteDataSource;
//   final QuranLocalDataSource quranLocalDataSource;

//   const QuranRepoImpl({
//     required this.quranRemoteDataSource,
//     required this.quranLocalDataSource,
//   });

//   @override
//   Future<Either<Failure, List<Surah>>> getSurahs() async {
//     try {
//       var surahs = await quranLocalDataSource.getSurahs();

//       return Right(surahs);
//     } catch (e) {
//       return Left(getFailureFromException(e));
//     }
//   }
// }
