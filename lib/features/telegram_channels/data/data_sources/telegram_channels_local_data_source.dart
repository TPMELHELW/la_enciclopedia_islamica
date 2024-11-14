import 'dart:convert';
import 'package:la_enciclopedia_islamica/core/constants/app_keys.dart';
import 'package:la_enciclopedia_islamica/core/services/archive_service.dart';
import 'package:la_enciclopedia_islamica/core/services/shared_preferences_service.dart';
import 'package:la_enciclopedia_islamica/features/telegram_channels/data/models/telegram_channels_model.dart';
import 'package:get/get.dart';

abstract class TelegramChannelsModelLocalDataSource {
  Future<TelegramChannels> getTelegramChannels();
}

class TelegramChannelsModelLocalDataSourceImpl
    extends TelegramChannelsModelLocalDataSource {
  final SharedPreferencesService sharedPreferencesService;
  final ArchiveService archiveService;

  TelegramChannelsModelLocalDataSourceImpl({
    required this.sharedPreferencesService,
    required this.archiveService,
  });

  @override
  Future<TelegramChannels> getTelegramChannels() async {
    try {
      // Read the local JSON file
      String? fileContent =
          await archiveService.readFile(name: AppKeys.telegram);

      // Call the readFile method
      Map<String, dynamic> jsonData = json.decode(fileContent!);
      //print('ssssss $jsonData');
      //  Map<String, dynamic> telegramChannels = jsonData["telegram-channels"];
      TelegramChannels channelsModel = TelegramChannels.fromJson(jsonData);

      return channelsModel;
    } catch (e) {
      rethrow;
    }
  }
}
