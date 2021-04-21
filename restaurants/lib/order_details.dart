import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurants/custom_stepper.dart';
import 'package:restaurants/order_data.dart';
import 'package:restaurants/order_model.dart';
import 'package:restaurants/other_order_information_view.dart';
import 'package:restaurants/stateless_widget_extensions.dart';
import 'package:restaurants/utils.dart';

class OrderDetails extends StatelessWidget {
  final OrderModel orderModel;

  const OrderDetails(this.orderModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 80, bottom: 30),
                    width: double.infinity,
                    height: 400,
                    color: orderModel.color,
                    child: Hero(
                      tag: orderModel.name,
                      child: Image.network(
                        orderModel.thumbnail,
                        fit: BoxFit.contain,
                        width: 300,
                        height: 300,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundedIconButton(
                          icon: Icons.arrow_back_rounded,
                          color: Colors.transparent,
                          iconSize: 40.0,
                          onPress: () => Navigator.of(context).pop(),
                        ),
                        RoundedIconButton(
                          icon: Icons.thumb_up_outlined,
                          color: Colors.transparent,
                          iconSize: 40.0,
                          onPress: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderModel.name,
                      style: TextStyle(
                        color: kColorText,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      orderModel.popularOrder,
                      style: TextStyle(
                        color: kColorText.withOpacity(0.6),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      orderModel.description,
                      style: TextStyle(
                        color: kColorText,
                        fontSize: 16.0,
                      ),
                    ),
                    Row(
                      children: [
                        OtherOrderInformationView(
                          icon: Icons.location_on_outlined,
                          color: kColorText.withOpacity(0.6),
                          text: orderModel.distance,
                        ).withPadding(right: 10),
                        OtherOrderInformationView(
                          icon: Icons.attach_money,
                          color: kColorText.withOpacity(0.6),
                          text: orderModel.priceRate,
                        ).withPadding(right: 10),
                        OtherOrderInformationView(
                          icon: Icons.star_border,
                          color: kColorText.withOpacity(0.6),
                          text: orderModel.popularRate,
                        ).withPadding(right: 10),
                      ],
                    ).withPadding(top: 10),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Price',
                      style: TextStyle(
                        color: kColorText.withOpacity(0.8),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '\$ ${orderModel.priceRate}',
                      style: TextStyle(
                        color: kColorText,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomStepper(
                          value: 1,
                          upperLimit: 10,
                          lowerLimit: 1,
                          stepValue: 1,
                          iconSize: 40.0,
                          callbackValue: (newValue) {
                            // quantity = newValue;
                          },
                        ),
                        RoundedTextIconButton(
                          text: 'Add',
                          icon: Icons.add,
                          iconSize: 42.0,
                          onPress: () {
                            Provider.of<OrderData>(context, listen: false).addOrder(orderModel, 1);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
