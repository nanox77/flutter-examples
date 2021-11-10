import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_wine/main.dart';
import 'package:shopping_wine/product.dart';

class ProductView extends StatelessWidget {
  final Product product;

  const ProductView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadius)),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(kRadius)),
        width: 445,
        height: 130,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(width: 200, height: 200, child: image()),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    name(),
                    description(),
                    price(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack image() {
    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(kRadius),
          ),
        ),
        Positioned(
          left: 15.0,
          right: 15.0,
          bottom: 30.0,
          child: Image.network(
            product.image,
            fit: BoxFit.contain,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }

  Text price() => Text('\$ ${product.price}',
      style: GoogleFonts.ptSansCaption(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink));

  Text description() => Text('Country: ${product.country} • Bottle size: 750 ml',
      style: GoogleFonts.ptSansCaption(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey));

  Text name() => Text(product.name, style: GoogleFonts.ptSansCaption(fontWeight: FontWeight.bold, fontSize: 18));
}
