import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:la_enciclopedia_islamica/features/youtubechannels/data/models/youtube_model.dart';

abstract class YoutubeChannelsModelLocalDataSource {
  Future<List<YoutubeModel>> getYoutubeChannels();
}

class YoutubeChannelsModelLocalDataSourceImpl
    extends YoutubeChannelsModelLocalDataSource {
  @override
  Future<List<YoutubeModel>> getYoutubeChannels() async {
    List<YoutubeModel> youtubechannels = [];
    String data = await rootBundle.loadString('assets/json/data-1.json');
    var data1 = jsonDecode(data);
    data1['channels'].forEach((v) {
      youtubechannels.add(YoutubeModel.fromJson(v));
    });

    return youtubechannels;
  }
}
