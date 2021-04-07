import 'package:flutter/material.dart';

class DessertView extends StatelessWidget {
  final dessert;

  const DessertView(this.dessert);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.network(dessert.thumbnail),
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.white.withOpacity(0.8),
                alignment: AlignmentDirectional.center,
                child: Text(
                  dessert.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
