import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zed_livecoding_flutter/data/episode.dart';

const _loremIpsum =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum';

class DetailsScreen extends StatelessWidget {
  final Episode episode;

  const DetailsScreen({Key key, this.episode}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.play_arrow),
      onPressed: () {},
    ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildAppBar(),
              _buildBody(),
            ],
          ),
        ),
      );

  Widget _buildAppBar() => Hero(
    tag: episode.id,
    child: SizedBox(
          height: 200.0,
          child: AppBar(
            flexibleSpace: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(episode.imageUrl, fit: BoxFit.cover),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          episode.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Season ${episode.season} Episode ${episode.numberInSeason}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
  );

    Widget _buildBody() => Builder(builder: (context) {
            return DefaultTextStyle(
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 20.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Episode statistics'),
                    Divider(),
                    _buildStatRow('IMDB Rating ${episode.imbdRating}'),
                    _buildStatRow('IMDB Votes ${episode.imbdVotes}'),
                    _buildStatRow('Air date ${episode.originalAirDate}'),
                    _buildStatRow('Views ${episode.views}'),
                    SizedBox(height: 30.0),
                    Text('Description'),
                    Divider(),
                    Text(
                      _loremIpsum,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 75.0),
                  ],
                ),
              ),
            );
          });

      Widget _buildStatRow(String text) => Row(
            children: [
              Container(
                height: 15.0,
                width: 15.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 12.0),
              Text(text),
            ],
          );
}
