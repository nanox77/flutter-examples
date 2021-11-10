import 'package:flutter/material.dart';
import 'package:shopping_wine/type_wine_item.dart';

class TypeWineMenu extends StatelessWidget {
  const TypeWineMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.start,
      runSpacing: 20,
      spacing: 20,
      children: const [
        TypeWineItem(typeName: 'Red', isSelected: true),
        TypeWineItem(typeName: 'White', isSelected: false),
        TypeWineItem(typeName: 'Rose', isSelected: false),
        TypeWineItem(typeName: 'Sparkling', isSelected: false),
        TypeWineItem(typeName: 'Dessert', isSelected: false),
      ],
    );
  }
}
