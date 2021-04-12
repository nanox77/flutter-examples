import 'package:flutter/material.dart';
import 'package:restaurants/order_details.dart';
import 'package:restaurants/orders.dart';
import 'package:restaurants/other_order_information_view.dart';
import 'package:restaurants/places.dart';
import 'package:restaurants/utils.dart';
import 'package:restaurants/stateless_widget_extensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurants',
      theme: ThemeData(primaryColor: kColorBackground),
      home: MyHomePage(title: 'Restaurants'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: kColorText,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: kColorText,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dinner_dining),
            label: 'Reservations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                buildHeaderText('Open right now', 'See all'),
                buildOpenPlaces(),
                SizedBox(height: 20.0),
                buildHeaderText('Popular orders', 'See all'),
                buildPopularOrders(context),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget buildPopularOrders(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: orders.map((order) => buildPopularOrder(context, order)).toList(),
    );
  }

  Widget buildPopularOrder(BuildContext context, OrderModel orderModel) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrderDetails(orderModel)),
      ),
      child: SizedBox(
        height: 130.0,
        child: Card(
          elevation: 2,
          color: orderModel.color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderModel.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      orderModel.popularOrder,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Row(
                          children: [
                            OtherOrderInformationView(
                              icon: Icons.location_on_outlined,
                              color: Colors.white,
                              text: orderModel.distance,
                            ).withPadding(right: 10),
                            OtherOrderInformationView(
                              icon: Icons.attach_money,
                              color: Colors.white,
                              text: orderModel.priceRate,
                            ).withPadding(right: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -50,
                top: -20,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Hero(
                    tag: orderModel.name,
                    child: Image.network(
                      orderModel.thumbnail,
                      fit: BoxFit.contain,
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

  Widget buildOpenPlaces() {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: places.map((place) => buildOpenPlace(place)).toList(),
      ),
    );
  }

  Widget buildOpenPlace(Place place) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color.fromARGB(200, 90, 70, 130)],
              stops: [0.7, 0.9],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10.0),
            height: 250,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  place.thumbnail,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Container(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              place.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildHeaderText(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: kColorText,
            fontSize: 22.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            text2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
