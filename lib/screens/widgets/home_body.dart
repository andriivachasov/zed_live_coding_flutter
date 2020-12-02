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
  Widget build(BuildContext context) { }

  void _fetchEpisodes() async {
    final episodes = await EpisodesDataSource.fetchEpisodes();
    setState(() {
      this.episodes = episodes;
    });
  }

}
