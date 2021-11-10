import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_wine/constants.dart';

class TypeWineItem extends StatelessWidget {
  final String typeName;
  final bool isSelected;

  const TypeWineItem({
    Key? key,
    required this.typeName,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      shadowColor: Colors.black54,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isSelected ? kRedColor : Colors.white,
        ),
        child: Text(typeName,
            style: GoogleFonts.ptSansCaption(fontSize: 12, color: isSelected ? Colors.white : Colors.grey)),
        alignment: Alignment.center,
        width: 100,
        height: 35,
      ),
    );
  }
}
