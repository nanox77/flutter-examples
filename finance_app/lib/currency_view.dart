import 'package:finance_app/currency_item.dart';
import 'package:finance_app/currency_utils.dart';
import 'package:flutter/material.dart';
import 'package:line_chart/charts/line-chart.widget.dart';

class CurrencyView extends StatelessWidget {
  static const double kCurrencyViewHeight = 240;
  static const double kCurrencyViewWidth = 170;

  final CurrencyItem item;
  const CurrencyView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kCurrencyViewHeight,
      width: kCurrencyViewWidth,
      decoration: BoxDecoration(
        color: item.color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/currency_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.symbol,
              style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              item.name,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black.withOpacity(0.5)),
            ),
            Chip(
              label: Text(item.percentage),
              backgroundColor: Colors.white,
            ),
            Expanded(
              child: LineChart(
                width: kCurrencyViewWidth - 30,
                height: 50,
                circleRadiusValue: 6,
                data: randomData(),
                linePaint: Paint()
                  ..strokeWidth = 2
                  ..style = PaintingStyle.stroke
                  ..color = item.color,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  item.url,
                  width: 30,
                  height: 30,
                ),
                Text(
                  item.price,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
