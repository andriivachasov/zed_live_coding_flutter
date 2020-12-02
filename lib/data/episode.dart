class Episode {
  final int id;
  final String imageUrl;
  final double imbdRating;
  final int imbdVotes;
  final int numberInSeason;
  final int numberInSeries;
  final String originalAirDate;
  final int originalAirYear;
  final String productionCode;
  final int season;
  final String title;
  final double usViewersInMillions;
  final String videoUrl;
  final int views;

  Episode.fromJson(Map<String, dynamic> jsonMap)
      : id = jsonMap['id'],
        imageUrl = jsonMap['image_url'],
        imbdRating = jsonMap['imdb_rating'].toDouble(),
        imbdVotes = jsonMap['imdb_votes'],
        numberInSeason = jsonMap['number_in_season'],
        numberInSeries = jsonMap['number_in_series'],
        originalAirDate = jsonMap['original_air_date'],
        originalAirYear = jsonMap['original_air_year'],
        productionCode = jsonMap['production_code'],
        season = jsonMap['season'],
        title = jsonMap['title'],
        usViewersInMillions = jsonMap['us_viewers_in_millions'].toDouble(),
        videoUrl = jsonMap['video_url'],
        views = jsonMap['views'];

  static List<Episode> fromJsonList(List<dynamic> list) =>
      list.map((dynamic jsonMap) => Episode.fromJson(jsonMap)).toList();
}
