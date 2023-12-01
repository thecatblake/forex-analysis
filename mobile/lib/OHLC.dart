import 'dart:convert';
import 'PricingData.pb.dart';
import 'package:candlesticks/candlesticks.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:developer' as developer;

class OHLC {
  DateTime date;
  double open;
  double high;
  double low;
  double close;
  double volume;

  OHLC(this.date, this.open, this.high, this.low, this.close, this.volume);

  Candle toCandle() {
    return Candle(date: date, high: high, low: low, open: open, close: close, volume: volume);
  }

  bool isSameMinute(OHLC other) {
    return date.day == other.date.day &&
        date.hour == other.date.hour &&
        date.minute == other.date.minute;
  }

  static OHLC fromJson(Map<dynamic, dynamic> json) {
    return OHLC(DateTime.fromMillisecondsSinceEpoch(json["datetime"]), json["open"], json["high"], json["low"], json["close"], 1);
  }

  @override
  String toString() {
    return "{date: ${this.date}, open: ${this.open}, high: ${this.high}, low: ${this.low}, close: ${this.close}}";
  }
}

class OHLCProvider {
  String currency;
  late WebSocketChannel channel;
  late Stream broadcastStream;


  static final currencyToSubName = {
    "USDJPY": "JPY=X",
    "EURUSD": "EURUSD=X",
    "GBPUSD": "GBPUSD=X",
    "USDCAD": "CAD=X",
    "USDCHF": "CHF=X"
  };

  OHLCProvider(this.currency) {
    channel = WebSocketChannel.connect(Uri.parse("wss://streamer.finance.yahoo.com"));
    broadcastStream = channel.stream.asBroadcastStream();
    subscribe();
  }

  void subscribe() {
    channel.sink.add(jsonEncode({
      "subscribe": [currencyToSubName[currency]]
    }));
  }

  void unsubscribe() {
    channel.sink.add(jsonEncode({
      "unsubscribe": [currencyToSubName[currency]]
    }));
  }

  Stream<OHLC> stream() {
    return broadcastStream.map((message) {
      var buf = base64Decode(message);
      var d = yaticker.fromBuffer(buf);
      var t = DateTime.now();
      return OHLC(DateTime(t.year, t.month, t.day, t.hour, t.minute, 0, 0, 0), d.price, d.price, d.price, d.price, 0.1);
    });
  }
}