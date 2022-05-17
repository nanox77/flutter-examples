import 'package:finance_app/currency_item.dart';
import 'package:flutter/material.dart';

final favoritesCurrencies = [
  CurrencyItem(
    'Bitcoin',
    'BTC',
    Colors.orange,
    '+2,49%',
    '\$45,338.11',
    'https://s2.coinmarketcap.com/static/img/coins/200x200/1.png',
  ),
  CurrencyItem(
    'Ethereum',
    'ETH',
    Colors.blue,
    '+2,32%',
    '\$2,439.82',
    'https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png',
  ),
  CurrencyItem(
    'Tether',
    'USDT',
    Colors.green,
    '+0,26%',
    '\$1.01',
    'https://s2.coinmarketcap.com/static/img/coins/200x200/825.png',
  ),
];

final recommendToBuy = [
  CurrencyItem(
    'XRP',
    'XRP',
    Colors.blueGrey,
    '-2,08%',
    '\$0,42',
    'https://s2.coinmarketcap.com/static/img/coins/64x64/52.png',
  ),
  CurrencyItem(
    'Solana',
    'SOL',
    Colors.purple,
    '+0,05%',
    '\$54,55',
    'https://s2.coinmarketcap.com/static/img/coins/64x64/5426.png',
  ),
  CurrencyItem(
    'Avalanche',
    'AVAX',
    Colors.red,
    '-4,79%',
    '\$33,17',
    'https://s2.coinmarketcap.com/static/img/coins/64x64/5805.png',
  ),
];
