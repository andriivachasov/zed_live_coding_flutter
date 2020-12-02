import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:zed_livecoding_flutter/data/episode.dart';

class EpisodesDataSource {
  EpisodesDataSource._();

  static Future<List<Episode>> fetchEpisodes() async {
    await Future<dynamic>.delayed(const Duration(seconds: 2));
    final String jsonFileData = await rootBundle.loadString('assets/simpsons_episodes.json');
    final List<Episode> episodes = Episode.fromJsonList(jsonDecode(jsonFileData)['episodes'])
      ..sort((Episode e1, Episode e2) => e2.imbdRating.compareTo(e1.imbdRating));
    return episodes.take(26).toList();
  }
}
