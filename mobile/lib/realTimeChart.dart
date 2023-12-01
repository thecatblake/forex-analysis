import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'OHLC.dart';
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;
import 'package:candlesticks/candlesticks.dart';


class RealTimeChart extends StatelessWidget {
  final String currency;
  late final OHLCProvider provider;
  final List<OHLC> data;

  RealTimeChart(this.currency, this.data, {super.key}) {
    provider = OHLCProvider(currency);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: provider.stream(),
        builder: (context, snapshot) {
          if(snapshot.data != null) {
            var newData = snapshot.data as OHLC;

            if(data.isEmpty) {
              data.add(newData);
            } else if(data.first.isSameMinute(newData)) {
              data.first = OHLC(
                  data.first.date,
                  data.first.open,
                  max(data.first.high, newData.high),
                  min(data.first.low, newData.low),
                  newData.close,
                  newData.volume
              );
            } else {
              data.insert(0, newData);
            }
          }

          return Candlesticks(candles: data.map((d) => d.toCandle()).toList());
        },
      );
  }
}
