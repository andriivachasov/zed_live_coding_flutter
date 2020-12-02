import 'package:flutter/material.dart';
import 'package:zed_livecoding_flutter/screens/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        drawer: _buildDrawer(),
        body: HomeBody(),
      );

  Widget _appBar() => AppBar(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0))
    ),
    title: Text(
      'The Simpsons',
      style: TextStyle(
        color: Colors.amberAccent,
        fontSize: 25,
        shadows: [Shadow(blurRadius: 3.0, offset: Offset(0.0, 3.0))],
      ),
    ),
  );

  Widget _buildDrawer() => Drawer(
    child: SafeArea(
      child: Column(
        children: [
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}
