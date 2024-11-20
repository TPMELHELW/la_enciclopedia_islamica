import 'package:dartz/dartz.dart';

import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/youtubechannels/data/models/youtube_model.dart';
import 'package:la_enciclopedia_islamica/features/youtubechannels/domain/repository/youtube_channels_repo.dart';

class GetYoutubeChannelsUseCase {
  final YoutubeChannelsRepo youtubeChannelsRepo;

  GetYoutubeChannelsUseCase(this.youtubeChannelsRepo);

  Future<Either<Failure, List<YoutubeModel>>> call() async {
    return await youtubeChannelsRepo.getChannels();
  }
}
