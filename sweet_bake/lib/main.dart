import 'package:flutter/material.dart';
import 'package:sweet_bake/dessert_view.dart';
import 'package:sweet_bake/desserts.dart';

void main() => runApp(SweetBakeApp());

final kColorBackground = Color.fromARGB(255, 254, 190, 120);

class SweetBakeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Bake',
      theme: ThemeData(
        primaryColor: kColorBackground,
      ),
      debugShowCheckedModeBanner: false,
      home: SweetBakePage(),
    );
  }
}

class SweetBakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        elevation: 0,
        title: Text('Sweet Bake'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () => print('Searching')),
        ],
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150.0,
              color: kColorBackground,
              child: Image.asset('images/background.png'),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  buildCupcake(),
                  DessertView(desserts[0]),
                  DessertView(desserts[1]),
                  DessertView(desserts[2]),
                  DessertView(desserts[3]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCupcake() {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 100.0,
        ),
        Positioned(
          bottom: 10.0,
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://assets.stickpng.com/thumbs/580b57fbd9996e24bc43c0b5.png',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
