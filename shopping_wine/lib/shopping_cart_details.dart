import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCartDetails extends StatelessWidget {
  final String field;
  final double price;
  final bool isTotal;

  const ShoppingCartDetails({
    Key? key,
    required this.field,
    required this.price,
    this.isTotal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(field,
            style: GoogleFonts.ptSansCaption(
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              fontSize: isTotal ? 16 : 12,
              color: isTotal ? Colors.black : Colors.grey,
            )),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: GoogleFonts.ptSansCaption(
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            fontSize: isTotal ? 16 : 12,
            color: isTotal ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }
}
