//
//  Generated code. Do not modify.
//  source: PricingData.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'PricingData.pbenum.dart';

export 'PricingData.pbenum.dart';

class yaticker extends $pb.GeneratedMessage {
  factory yaticker({
    $core.String? id,
    $core.double? price,
    $core.int? time,
    $core.String? currency,
    $core.String? exchange,
    yaticker_QuoteType? quoteType,
    yaticker_MarketHoursType? marketHours,
    $core.double? changePercent,
    $fixnum.Int64? dayVolume,
    $core.double? dayHigh,
    $core.double? dayLow,
    $core.double? change,
    $core.String? shortName,
    $fixnum.Int64? expireDate,
    $core.double? openPrice,
    $core.double? previousClose,
    $core.double? strikePrice,
    $core.String? underlyingSymbol,
    $fixnum.Int64? openInterest,
    yaticker_OptionType? optionsType,
    $fixnum.Int64? miniOption,
    $fixnum.Int64? lastSize,
    $core.double? bid,
    $fixnum.Int64? bidSize,
    $core.double? ask,
    $fixnum.Int64? askSize,
    $fixnum.Int64? priceHint,
    $core.int? vol24hr,
    $fixnum.Int64? volAllCurrencies,
    $core.String? fromcurrency,
    $core.String? lastMarket,
    $core.double? circulatingSupply,
    $core.double? marketcap,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (price != null) {
      $result.price = price;
    }
    if (time != null) {
      $result.time = time;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (exchange != null) {
      $result.exchange = exchange;
    }
    if (quoteType != null) {
      $result.quoteType = quoteType;
    }
    if (marketHours != null) {
      $result.marketHours = marketHours;
    }
    if (changePercent != null) {
      $result.changePercent = changePercent;
    }
    if (dayVolume != null) {
      $result.dayVolume = dayVolume;
    }
    if (dayHigh != null) {
      $result.dayHigh = dayHigh;
    }
    if (dayLow != null) {
      $result.dayLow = dayLow;
    }
    if (change != null) {
      $result.change = change;
    }
    if (shortName != null) {
      $result.shortName = shortName;
    }
    if (expireDate != null) {
      $result.expireDate = expireDate;
    }
    if (openPrice != null) {
      $result.openPrice = openPrice;
    }
    if (previousClose != null) {
      $result.previousClose = previousClose;
    }
    if (strikePrice != null) {
      $result.strikePrice = strikePrice;
    }
    if (underlyingSymbol != null) {
      $result.underlyingSymbol = underlyingSymbol;
    }
    if (openInterest != null) {
      $result.openInterest = openInterest;
    }
    if (optionsType != null) {
      $result.optionsType = optionsType;
    }
    if (miniOption != null) {
      $result.miniOption = miniOption;
    }
    if (lastSize != null) {
      $result.lastSize = lastSize;
    }
    if (bid != null) {
      $result.bid = bid;
    }
    if (bidSize != null) {
      $result.bidSize = bidSize;
    }
    if (ask != null) {
      $result.ask = ask;
    }
    if (askSize != null) {
      $result.askSize = askSize;
    }
    if (priceHint != null) {
      $result.priceHint = priceHint;
    }
    if (vol24hr != null) {
      $result.vol24hr = vol24hr;
    }
    if (volAllCurrencies != null) {
      $result.volAllCurrencies = volAllCurrencies;
    }
    if (fromcurrency != null) {
      $result.fromcurrency = fromcurrency;
    }
    if (lastMarket != null) {
      $result.lastMarket = lastMarket;
    }
    if (circulatingSupply != null) {
      $result.circulatingSupply = circulatingSupply;
    }
    if (marketcap != null) {
      $result.marketcap = marketcap;
    }
    return $result;
  }
  yaticker._() : super();
  factory yaticker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory yaticker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'yaticker', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OF)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'time', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'currency')
    ..aOS(5, _omitFieldNames ? '' : 'exchange')
    ..e<yaticker_QuoteType>(6, _omitFieldNames ? '' : 'quoteType', $pb.PbFieldType.OE, protoName: 'quoteType', defaultOrMaker: yaticker_QuoteType.NONE, valueOf: yaticker_QuoteType.valueOf, enumValues: yaticker_QuoteType.values)
    ..e<yaticker_MarketHoursType>(7, _omitFieldNames ? '' : 'marketHours', $pb.PbFieldType.OE, protoName: 'marketHours', defaultOrMaker: yaticker_MarketHoursType.PRE_MARKET, valueOf: yaticker_MarketHoursType.valueOf, enumValues: yaticker_MarketHoursType.values)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'changePercent', $pb.PbFieldType.OF, protoName: 'changePercent')
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'dayVolume', $pb.PbFieldType.OS6, protoName: 'dayVolume', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'dayHigh', $pb.PbFieldType.OF, protoName: 'dayHigh')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'dayLow', $pb.PbFieldType.OF, protoName: 'dayLow')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'change', $pb.PbFieldType.OF)
    ..aOS(13, _omitFieldNames ? '' : 'shortName', protoName: 'shortName')
    ..a<$fixnum.Int64>(14, _omitFieldNames ? '' : 'expireDate', $pb.PbFieldType.OS6, protoName: 'expireDate', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(15, _omitFieldNames ? '' : 'openPrice', $pb.PbFieldType.OF, protoName: 'openPrice')
    ..a<$core.double>(16, _omitFieldNames ? '' : 'previousClose', $pb.PbFieldType.OF, protoName: 'previousClose')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'strikePrice', $pb.PbFieldType.OF, protoName: 'strikePrice')
    ..aOS(18, _omitFieldNames ? '' : 'underlyingSymbol', protoName: 'underlyingSymbol')
    ..a<$fixnum.Int64>(19, _omitFieldNames ? '' : 'openInterest', $pb.PbFieldType.OS6, protoName: 'openInterest', defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<yaticker_OptionType>(20, _omitFieldNames ? '' : 'optionsType', $pb.PbFieldType.OE, protoName: 'optionsType', defaultOrMaker: yaticker_OptionType.CALL, valueOf: yaticker_OptionType.valueOf, enumValues: yaticker_OptionType.values)
    ..a<$fixnum.Int64>(21, _omitFieldNames ? '' : 'miniOption', $pb.PbFieldType.OS6, protoName: 'miniOption', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(22, _omitFieldNames ? '' : 'lastSize', $pb.PbFieldType.OS6, protoName: 'lastSize', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(23, _omitFieldNames ? '' : 'bid', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(24, _omitFieldNames ? '' : 'bidSize', $pb.PbFieldType.OS6, protoName: 'bidSize', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(25, _omitFieldNames ? '' : 'ask', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(26, _omitFieldNames ? '' : 'askSize', $pb.PbFieldType.OS6, protoName: 'askSize', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(27, _omitFieldNames ? '' : 'priceHint', $pb.PbFieldType.OS6, protoName: 'priceHint', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(28, _omitFieldNames ? '' : 'vol24hr', $pb.PbFieldType.O3, protoName: 'vol_24hr')
    ..a<$fixnum.Int64>(29, _omitFieldNames ? '' : 'volAllCurrencies', $pb.PbFieldType.OS6, protoName: 'volAllCurrencies', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(30, _omitFieldNames ? '' : 'fromcurrency')
    ..aOS(31, _omitFieldNames ? '' : 'lastMarket', protoName: 'lastMarket')
    ..a<$core.double>(32, _omitFieldNames ? '' : 'circulatingSupply', $pb.PbFieldType.OD, protoName: 'circulatingSupply')
    ..a<$core.double>(33, _omitFieldNames ? '' : 'marketcap', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  yaticker clone() => yaticker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  yaticker copyWith(void Function(yaticker) updates) => super.copyWith((message) => updates(message as yaticker)) as yaticker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static yaticker create() => yaticker._();
  yaticker createEmptyInstance() => create();
  static $pb.PbList<yaticker> createRepeated() => $pb.PbList<yaticker>();
  @$core.pragma('dart2js:noInline')
  static yaticker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<yaticker>(create);
  static yaticker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get time => $_getIZ(2);
  @$pb.TagNumber(3)
  set time($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get currency => $_getSZ(3);
  @$pb.TagNumber(4)
  set currency($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrency() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrency() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get exchange => $_getSZ(4);
  @$pb.TagNumber(5)
  set exchange($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExchange() => $_has(4);
  @$pb.TagNumber(5)
  void clearExchange() => clearField(5);

  @$pb.TagNumber(6)
  yaticker_QuoteType get quoteType => $_getN(5);
  @$pb.TagNumber(6)
  set quoteType(yaticker_QuoteType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuoteType() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuoteType() => clearField(6);

  @$pb.TagNumber(7)
  yaticker_MarketHoursType get marketHours => $_getN(6);
  @$pb.TagNumber(7)
  set marketHours(yaticker_MarketHoursType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMarketHours() => $_has(6);
  @$pb.TagNumber(7)
  void clearMarketHours() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get changePercent => $_getN(7);
  @$pb.TagNumber(8)
  set changePercent($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasChangePercent() => $_has(7);
  @$pb.TagNumber(8)
  void clearChangePercent() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get dayVolume => $_getI64(8);
  @$pb.TagNumber(9)
  set dayVolume($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDayVolume() => $_has(8);
  @$pb.TagNumber(9)
  void clearDayVolume() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get dayHigh => $_getN(9);
  @$pb.TagNumber(10)
  set dayHigh($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDayHigh() => $_has(9);
  @$pb.TagNumber(10)
  void clearDayHigh() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get dayLow => $_getN(10);
  @$pb.TagNumber(11)
  set dayLow($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDayLow() => $_has(10);
  @$pb.TagNumber(11)
  void clearDayLow() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get change => $_getN(11);
  @$pb.TagNumber(12)
  set change($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasChange() => $_has(11);
  @$pb.TagNumber(12)
  void clearChange() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get shortName => $_getSZ(12);
  @$pb.TagNumber(13)
  set shortName($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasShortName() => $_has(12);
  @$pb.TagNumber(13)
  void clearShortName() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get expireDate => $_getI64(13);
  @$pb.TagNumber(14)
  set expireDate($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasExpireDate() => $_has(13);
  @$pb.TagNumber(14)
  void clearExpireDate() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get openPrice => $_getN(14);
  @$pb.TagNumber(15)
  set openPrice($core.double v) { $_setFloat(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasOpenPrice() => $_has(14);
  @$pb.TagNumber(15)
  void clearOpenPrice() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get previousClose => $_getN(15);
  @$pb.TagNumber(16)
  set previousClose($core.double v) { $_setFloat(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasPreviousClose() => $_has(15);
  @$pb.TagNumber(16)
  void clearPreviousClose() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get strikePrice => $_getN(16);
  @$pb.TagNumber(17)
  set strikePrice($core.double v) { $_setFloat(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasStrikePrice() => $_has(16);
  @$pb.TagNumber(17)
  void clearStrikePrice() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get underlyingSymbol => $_getSZ(17);
  @$pb.TagNumber(18)
  set underlyingSymbol($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasUnderlyingSymbol() => $_has(17);
  @$pb.TagNumber(18)
  void clearUnderlyingSymbol() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get openInterest => $_getI64(18);
  @$pb.TagNumber(19)
  set openInterest($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasOpenInterest() => $_has(18);
  @$pb.TagNumber(19)
  void clearOpenInterest() => clearField(19);

  @$pb.TagNumber(20)
  yaticker_OptionType get optionsType => $_getN(19);
  @$pb.TagNumber(20)
  set optionsType(yaticker_OptionType v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasOptionsType() => $_has(19);
  @$pb.TagNumber(20)
  void clearOptionsType() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get miniOption => $_getI64(20);
  @$pb.TagNumber(21)
  set miniOption($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasMiniOption() => $_has(20);
  @$pb.TagNumber(21)
  void clearMiniOption() => clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get lastSize => $_getI64(21);
  @$pb.TagNumber(22)
  set lastSize($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasLastSize() => $_has(21);
  @$pb.TagNumber(22)
  void clearLastSize() => clearField(22);

  @$pb.TagNumber(23)
  $core.double get bid => $_getN(22);
  @$pb.TagNumber(23)
  set bid($core.double v) { $_setFloat(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasBid() => $_has(22);
  @$pb.TagNumber(23)
  void clearBid() => clearField(23);

  @$pb.TagNumber(24)
  $fixnum.Int64 get bidSize => $_getI64(23);
  @$pb.TagNumber(24)
  set bidSize($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasBidSize() => $_has(23);
  @$pb.TagNumber(24)
  void clearBidSize() => clearField(24);

  @$pb.TagNumber(25)
  $core.double get ask => $_getN(24);
  @$pb.TagNumber(25)
  set ask($core.double v) { $_setFloat(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasAsk() => $_has(24);
  @$pb.TagNumber(25)
  void clearAsk() => clearField(25);

  @$pb.TagNumber(26)
  $fixnum.Int64 get askSize => $_getI64(25);
  @$pb.TagNumber(26)
  set askSize($fixnum.Int64 v) { $_setInt64(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasAskSize() => $_has(25);
  @$pb.TagNumber(26)
  void clearAskSize() => clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get priceHint => $_getI64(26);
  @$pb.TagNumber(27)
  set priceHint($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasPriceHint() => $_has(26);
  @$pb.TagNumber(27)
  void clearPriceHint() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get vol24hr => $_getIZ(27);
  @$pb.TagNumber(28)
  set vol24hr($core.int v) { $_setSignedInt32(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasVol24hr() => $_has(27);
  @$pb.TagNumber(28)
  void clearVol24hr() => clearField(28);

  @$pb.TagNumber(29)
  $fixnum.Int64 get volAllCurrencies => $_getI64(28);
  @$pb.TagNumber(29)
  set volAllCurrencies($fixnum.Int64 v) { $_setInt64(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasVolAllCurrencies() => $_has(28);
  @$pb.TagNumber(29)
  void clearVolAllCurrencies() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get fromcurrency => $_getSZ(29);
  @$pb.TagNumber(30)
  set fromcurrency($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasFromcurrency() => $_has(29);
  @$pb.TagNumber(30)
  void clearFromcurrency() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get lastMarket => $_getSZ(30);
  @$pb.TagNumber(31)
  set lastMarket($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasLastMarket() => $_has(30);
  @$pb.TagNumber(31)
  void clearLastMarket() => clearField(31);

  @$pb.TagNumber(32)
  $core.double get circulatingSupply => $_getN(31);
  @$pb.TagNumber(32)
  set circulatingSupply($core.double v) { $_setDouble(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasCirculatingSupply() => $_has(31);
  @$pb.TagNumber(32)
  void clearCirculatingSupply() => clearField(32);

  @$pb.TagNumber(33)
  $core.double get marketcap => $_getN(32);
  @$pb.TagNumber(33)
  set marketcap($core.double v) { $_setDouble(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasMarketcap() => $_has(32);
  @$pb.TagNumber(33)
  void clearMarketcap() => clearField(33);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
