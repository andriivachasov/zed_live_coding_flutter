import 'package:flutter/material.dart';
import 'package:zed_livecoding_flutter/data/episode.dart';
import 'package:zed_livecoding_flutter/data/episoded_data_source.dart';
import 'package:zed_livecoding_flutter/screens/details_screen.dart';
import 'package:zed_livecoding_flutter/screens/widgets/episode_grid_item.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<Episode> episodes;

  @override
  void initState() {
    _fetchEpisodes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GridView.builder(
        itemCount: episodes.length,
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => EpisodeGridItem(
          episode: episodes[index],
          onTap: () => _navigateToEpisodeDetails(episodes[index]),
        ),
      );

  void _fetchEpisodes() async {
    final episodes = await EpisodesDataSource.fetchEpisodes();
    setState(() {
      this.episodes = episodes;
    });
  }

  void _navigateToEpisodeDetails(Episode episode) {
    Navigator.of(context).push<dynamic>(MaterialPageRoute<dynamic>(
      builder: (context) => DetailsScreen(episode: episode),
    ));
  }
}
