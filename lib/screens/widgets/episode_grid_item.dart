import 'package:flutter/material.dart';
import 'package:zed_livecoding_flutter/data/episode.dart';

class EpisodeGridItem extends StatelessWidget {
  final Episode episode;
  final VoidCallback onTap;

  const EpisodeGridItem({Key key, this.episode, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Hero(
      tag: episode.id,
      child: Card(
        elevation: 3.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
            bottom: Radius.circular(10.0),
          ),
        ),
        child: Column(
              children: [
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        episode.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          episode.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 18.0,
                            shadows: [
                              Shadow(blurRadius: 3.0),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Season ${episode.season} Episode ${episode.numberInSeason}'),
              ],
            ),
      ),
    ),
  );
}
