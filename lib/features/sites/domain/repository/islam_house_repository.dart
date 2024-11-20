import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/features/sites/domain/entities/media_entity.dart';
import '../../../../core/errors/failures.dart';
import '../entities/fixed_entities.dart';

abstract class IslamHouseRepository {
  Future<Either<Failure, List<FixedEntities>>> getContent();
  Future<Either<Failure, List<MediaEntity>>> getBooks();
  Future<Either<Failure, List<MediaEntity>>> getAudios();
  Future<Either<Failure, List<MediaEntity>>> getVideos();
  Future<Either<Failure, List<FixedEntities>>> getFatwa();
}
