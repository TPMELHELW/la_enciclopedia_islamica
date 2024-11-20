import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/youtubechannels/data/models/youtube_model.dart';

abstract class YoutubeChannelsRepo {
  Future<Either<Failure, List<YoutubeModel>>> getChannels();
}
