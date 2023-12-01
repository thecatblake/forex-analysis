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

import 'package:protobuf/protobuf.dart' as $pb;

class yaticker_QuoteType extends $pb.ProtobufEnum {
  static const yaticker_QuoteType NONE = yaticker_QuoteType._(0, _omitEnumNames ? '' : 'NONE');
  static const yaticker_QuoteType ALTSYMBOL = yaticker_QuoteType._(5, _omitEnumNames ? '' : 'ALTSYMBOL');
  static const yaticker_QuoteType HEARTBEAT = yaticker_QuoteType._(7, _omitEnumNames ? '' : 'HEARTBEAT');
  static const yaticker_QuoteType EQUITY = yaticker_QuoteType._(8, _omitEnumNames ? '' : 'EQUITY');
  static const yaticker_QuoteType INDEX = yaticker_QuoteType._(9, _omitEnumNames ? '' : 'INDEX');
  static const yaticker_QuoteType MUTUALFUND = yaticker_QuoteType._(11, _omitEnumNames ? '' : 'MUTUALFUND');
  static const yaticker_QuoteType MONEYMARKET = yaticker_QuoteType._(12, _omitEnumNames ? '' : 'MONEYMARKET');
  static const yaticker_QuoteType OPTION = yaticker_QuoteType._(13, _omitEnumNames ? '' : 'OPTION');
  static const yaticker_QuoteType CURRENCY = yaticker_QuoteType._(14, _omitEnumNames ? '' : 'CURRENCY');
  static const yaticker_QuoteType WARRANT = yaticker_QuoteType._(15, _omitEnumNames ? '' : 'WARRANT');
  static const yaticker_QuoteType BOND = yaticker_QuoteType._(17, _omitEnumNames ? '' : 'BOND');
  static const yaticker_QuoteType FUTURE = yaticker_QuoteType._(18, _omitEnumNames ? '' : 'FUTURE');
  static const yaticker_QuoteType ETF = yaticker_QuoteType._(20, _omitEnumNames ? '' : 'ETF');
  static const yaticker_QuoteType COMMODITY = yaticker_QuoteType._(23, _omitEnumNames ? '' : 'COMMODITY');
  static const yaticker_QuoteType ECNQUOTE = yaticker_QuoteType._(28, _omitEnumNames ? '' : 'ECNQUOTE');
  static const yaticker_QuoteType CRYPTOCURRENCY = yaticker_QuoteType._(41, _omitEnumNames ? '' : 'CRYPTOCURRENCY');
  static const yaticker_QuoteType INDICATOR = yaticker_QuoteType._(42, _omitEnumNames ? '' : 'INDICATOR');
  static const yaticker_QuoteType INDUSTRY = yaticker_QuoteType._(1000, _omitEnumNames ? '' : 'INDUSTRY');

  static const $core.List<yaticker_QuoteType> values = <yaticker_QuoteType> [
    NONE,
    ALTSYMBOL,
    HEARTBEAT,
    EQUITY,
    INDEX,
    MUTUALFUND,
    MONEYMARKET,
    OPTION,
    CURRENCY,
    WARRANT,
    BOND,
    FUTURE,
    ETF,
    COMMODITY,
    ECNQUOTE,
    CRYPTOCURRENCY,
    INDICATOR,
    INDUSTRY,
  ];

  static final $core.Map<$core.int, yaticker_QuoteType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static yaticker_QuoteType? valueOf($core.int value) => _byValue[value];

  const yaticker_QuoteType._($core.int v, $core.String n) : super(v, n);
}

class yaticker_OptionType extends $pb.ProtobufEnum {
  static const yaticker_OptionType CALL = yaticker_OptionType._(0, _omitEnumNames ? '' : 'CALL');
  static const yaticker_OptionType PUT = yaticker_OptionType._(1, _omitEnumNames ? '' : 'PUT');

  static const $core.List<yaticker_OptionType> values = <yaticker_OptionType> [
    CALL,
    PUT,
  ];

  static final $core.Map<$core.int, yaticker_OptionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static yaticker_OptionType? valueOf($core.int value) => _byValue[value];

  const yaticker_OptionType._($core.int v, $core.String n) : super(v, n);
}

class yaticker_MarketHoursType extends $pb.ProtobufEnum {
  static const yaticker_MarketHoursType PRE_MARKET = yaticker_MarketHoursType._(0, _omitEnumNames ? '' : 'PRE_MARKET');
  static const yaticker_MarketHoursType REGULAR_MARKET = yaticker_MarketHoursType._(1, _omitEnumNames ? '' : 'REGULAR_MARKET');
  static const yaticker_MarketHoursType POST_MARKET = yaticker_MarketHoursType._(2, _omitEnumNames ? '' : 'POST_MARKET');
  static const yaticker_MarketHoursType EXTENDED_HOURS_MARKET = yaticker_MarketHoursType._(3, _omitEnumNames ? '' : 'EXTENDED_HOURS_MARKET');

  static const $core.List<yaticker_MarketHoursType> values = <yaticker_MarketHoursType> [
    PRE_MARKET,
    REGULAR_MARKET,
    POST_MARKET,
    EXTENDED_HOURS_MARKET,
  ];

  static final $core.Map<$core.int, yaticker_MarketHoursType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static yaticker_MarketHoursType? valueOf($core.int value) => _byValue[value];

  const yaticker_MarketHoursType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
