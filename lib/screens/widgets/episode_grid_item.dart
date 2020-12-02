import 'package:flutter/material.dart';
import 'package:zed_livecoding_flutter/data/episode.dart';

class EpisodeGridItem extends StatelessWidget {
  final Episode episode;
  final VoidCallback onTap;

  const EpisodeGridItem({Key key, this.episode, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {}
}
