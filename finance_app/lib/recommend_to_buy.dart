import 'package:finance_app/currencies.dart';
import 'package:finance_app/currency_view.dart';
import 'package:flutter/material.dart';

class RecommendToBuy extends StatelessWidget {
  const RecommendToBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RECOMMEND TO BUY',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: CurrencyView.kCurrencyViewHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 10),
                child: CurrencyView(item: recommendToBuy[index]),
              ),
              itemCount: recommendToBuy.length,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
