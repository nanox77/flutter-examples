import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_wine/product_view.dart';
import 'package:shopping_wine/products.dart';
import 'package:shopping_wine/search_bar.dart';
import 'package:shopping_wine/shopping_cart_details.dart';
import 'package:shopping_wine/shopping_cart_product_view.dart';
import 'package:shopping_wine/shopping_cart_products.dart';
import 'package:shopping_wine/type_wine_menu.dart';

const double kRadius = 25;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Wine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Shopping Wine'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00f9f9f9),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: ListView(
              key: const Key('list_view_products'),
              controller: ScrollController(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              children: [
                Text('Wine & Spirits Team',
                    style: GoogleFonts.ptSansCaption(fontWeight: FontWeight.bold, fontSize: 28)),
                const SizedBox(height: 5),
                Text('Location: New York', style: GoogleFonts.ptSansCaption(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 20),
                const SearchBar(),
                const SizedBox(height: 20),
                const TypeWineMenu(),
                const SizedBox(height: 40),
                buildProducts(),
              ],
            ),
          ),
          VerticalDivider(thickness: 1, color: Colors.grey[200], width: 1),
          Expanded(
            flex: 2,
            child: ListView(
              key: const Key('list_view_shopping_cart_products'),
              controller: ScrollController(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              children: [
                Text('Cart', style: GoogleFonts.ptSansCaption(fontWeight: FontWeight.bold, fontSize: 28)),
                const SizedBox(height: 40),
                buildShoppingCartProducts(),
                const SizedBox(height: 40),
                const ShoppingCartDetails(field: 'Subtotal', price: 96.00),
                const SizedBox(height: 20),
                const ShoppingCartDetails(field: 'Tax', price: 2.00),
                const SizedBox(height: 20),
                const ShoppingCartDetails(field: 'Discount', price: 0.00),
                const SizedBox(height: 20),
                Divider(thickness: 1, color: Colors.grey[200]),
                const SizedBox(height: 20),
                const ShoppingCartDetails(field: 'Total', price: 98.00, isTotal: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProducts() {
    return Wrap(
      runAlignment: WrapAlignment.center,
      runSpacing: 20,
      spacing: 20,
      children: products.map((product) => ProductView(product: product)).toList(),
    );
  }

  Widget buildShoppingCartProducts() {
    return Wrap(
      runAlignment: WrapAlignment.center,
      runSpacing: 20,
      spacing: 20,
      children: shoppingCartProducts.map((product) => ShoppingCartProductView(product: product)).toList(),
    );
  }
}
