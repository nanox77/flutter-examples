import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_wine/main.dart';
import 'package:shopping_wine/product.dart';

class ShoppingCartProductView extends StatefulWidget {
  final Product product;

  const ShoppingCartProductView({Key? key, required this.product}) : super(key: key);

  @override
  State<ShoppingCartProductView> createState() => _ShoppingCartProductViewState();
}

class _ShoppingCartProductViewState extends State<ShoppingCartProductView> {
  int quantity = 2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            width: 300,
            height: 100,
            child: Stack(
              fit: StackFit.passthrough,
              clipBehavior: Clip.none,
              children: [
                Card(
                  elevation: 4,
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kRadius),
                  ),
                  shadowColor: Colors.black54,
                ),
                Positioned(
                  left: 15.0,
                  right: 15.0,
                  bottom: 20.0,
                  child: Image.network(
                    widget.product.image,
                    fit: BoxFit.contain,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.product.name, style: GoogleFonts.ptSansCaption(fontWeight: FontWeight.bold, fontSize: 16)),
                Text('Bottle size: 750 ml',
                    style: GoogleFonts.ptSansCaption(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey)),
                Text('\$ ${widget.product.price}',
                    style: GoogleFonts.ptSansCaption(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink)),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  quantity++;
                },
              ),
              Text(quantity.toString()),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  if (quantity > 1) {
                    quantity--;
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
