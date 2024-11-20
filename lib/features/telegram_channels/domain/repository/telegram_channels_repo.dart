import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/telegram_channels/data/models/telegram_channels_model.dart';

abstract class TelegramChannelsRepo {
  Future<Either<Failure, TelegramChannels>> getChannels();
}
