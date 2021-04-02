import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/albums.dart';

void main() => runApp(SpotifyUIClone());

class SpotifyUIClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify UI clone',
      theme: ThemeData.dark(),
      home: FeedPage(),
    );
  }
}

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color.fromARGB(255, 75, 80, 70), Colors.black],
            center: Alignment(-1.0, -1.0),
            radius: 1.0,
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(14.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader('Good night'),
                  SizedBox(height: 10.0),
                  buildLastListened(),
                  SizedBox(height: 20.0),
                  buildRecentlyListenedText('Recently listened'),
                  SizedBox(height: 15.0),
                  buildRecentlyListened(),
                  SizedBox(height: 20.0),
                  buildRecentlyListenedText('Podcasts'),
                  SizedBox(height: 15.0),
                  buildPodcasts(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPodcasts() {
    return SizedBox(
      height: 200.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: podcasts.map((podcast) => buildAlbum(podcast)).toList(),
      ),
    );
  }

  Widget buildRecentlyListened() {
    return SizedBox(
      height: 200.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: albums.map((album) => buildAlbum(album)).toList(),
      ),
    );
  }

  Widget buildAlbum(Album album) {
    return Container(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              album.thumbnail,
              fit: BoxFit.cover,
              width: 150,
              height: 150,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              album.name,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecentlyListenedText(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget buildLastListened() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              buildLastListenedItem(albums[3].name, albums[3].thumbnail),
              buildLastListenedItem(albums[1].name, albums[1].thumbnail),
              buildLastListenedItem(albums[0].name, albums[0].thumbnail),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              buildLastListenedItem(albums[2].name, albums[2].thumbnail),
              buildLastListenedItem(albums[4].name, albums[4].thumbnail),
              buildLastListenedItem(albums[5].name, albums[5].thumbnail),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildLastListenedItem(String name, String thumbnail) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () => print('Tap on $name'),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey[800],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10.0),
                  ),
                  child: Image.network(
                    thumbnail,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.settings_outlined,
            size: 26.0,
          ),
          onPressed: () => print('Go to settings!'),
        ),
      ],
    );
  }
}
