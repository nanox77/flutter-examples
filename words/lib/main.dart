import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:words/favorite_words_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Likely Words',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Likely Words'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> words = nouns.take(40).toList();
  List<String> savedWords = List<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Badge(
            badgeContent: Text('${savedWords.length}'),
            toAnimate: false,
            position: BadgePosition.topRight(top: 0, right: 0),
            child: IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () => pushToFavoriteWordsRoute(context),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: words.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          String word = words[index];
          bool isSaved = savedWords.contains(word);

          return ListTile(
            title: Text(word),
            trailing: Icon(
              isSaved ? Icons.favorite : Icons.favorite_border,
              color: isSaved ? Colors.red : null,
            ),
            onTap: () {
              setState(() {
                if (isSaved) {
                  savedWords.remove(word);
                } else {
                  savedWords.add(word);
                }
              });
            },
          );
        },
      ),
    );
  }

  Future pushToFavoriteWordsRoute(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => FavoriteWordsRoute(
          favoriteItems: savedWords,
        ),
      ),
    );
  }
}
