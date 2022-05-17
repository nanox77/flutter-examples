import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:finance_app/favorites_currencies.dart';
import 'package:finance_app/finance_app_bar.dart';
import 'package:finance_app/recommend_to_buy.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        addAutomaticKeepAlives: true,
        children: const [
          FinanceAppBar(),
          SizedBox(height: 20),
          FavoriteCurrencies(),
          SizedBox(height: 20),
          RecommendToBuy(),
          SizedBox(height: 30),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.black,
        activeColor: FinanceAppBar.kAppbarColor,
        items: const [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.inbox),
          TabItem(icon: Icons.change_circle),
          TabItem(icon: Icons.stacked_bar_chart),
          TabItem(icon: Icons.settings),
        ],
        initialActiveIndex: 2,
      ),
    );
  }
}
